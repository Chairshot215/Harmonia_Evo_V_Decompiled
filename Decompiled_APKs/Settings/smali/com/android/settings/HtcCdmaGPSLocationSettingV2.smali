.class public Lcom/android/settings/HtcCdmaGPSLocationSettingV2;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "HtcCdmaGPSLocationSettingV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupGoogleLBS;,
        Lcom/android/settings/HtcCdmaGPSLocationSettingV2$GpsSettingsObserver;,
        Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupGPS;,
        Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupVZW;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final E911_ONLY_KEY:Ljava/lang/String;

.field private final GOOGLE_LOCATION_SERVICE_KEY:Ljava/lang/String;

.field private final INTENT_OF_DEVICE_POLICY_CHANGED:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private final THIRD_PARTY_LOCATION_SERVICE_KEY:Ljava/lang/String;

.field private final VERIZON_LOCATION_SERVICE_KEY:Ljava/lang/String;

.field private final VZW_LBS_PROVIDER:Ljava/lang/String;

.field private mCB_3rdPartyLocationService:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mCB_E911_ONLY:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mCB_VerizonLocatonService:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field protected mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mGpsSettingsObserver:Lcom/android/settings/HtcCdmaGPSLocationSettingV2$GpsSettingsObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNetwork:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mSetupGPS:Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupGPS;

.field private mSetupGoogleLBS:Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupGoogleLBS;

.field private mSetupVZW:Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupVZW;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 40
    const-string v0, "HtcCdmaGPSLocationSetting"

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->LOG_TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->DBG:Z

    .line 43
    const-string v0, "e911_only_key"

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->E911_ONLY_KEY:Ljava/lang/String;

    .line 44
    const-string v0, "verizon_lbs_key"

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->VERIZON_LOCATION_SERVICE_KEY:Ljava/lang/String;

    .line 45
    const-string v0, "3rdparty_lbs_key"

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->THIRD_PARTY_LOCATION_SERVICE_KEY:Ljava/lang/String;

    .line 46
    const-string v0, "google_lbs_key"

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->GOOGLE_LOCATION_SERVICE_KEY:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_E911_ONLY:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 49
    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_VerizonLocatonService:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 50
    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_3rdPartyLocationService:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 51
    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mNetwork:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 52
    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mContext:Landroid/content/Context;

    .line 54
    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 56
    new-instance v0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$1;

    invoke-direct {v0, p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$1;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 170
    new-instance v0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$2;

    invoke-direct {v0, p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$2;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 217
    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mIntentFilter:Landroid/content/IntentFilter;

    .line 219
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->INTENT_OF_DEVICE_POLICY_CHANGED:Ljava/lang/String;

    .line 333
    const-string v0, "vzw_lbs"

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->VZW_LBS_PROVIDER:Ljava/lang/String;

    .line 335
    new-instance v0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupVZW;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupVZW;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;Lcom/android/settings/HtcCdmaGPSLocationSettingV2$1;)V

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mSetupVZW:Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupVZW;

    .line 349
    new-instance v0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupGPS;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupGPS;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;Lcom/android/settings/HtcCdmaGPSLocationSettingV2$1;)V

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mSetupGPS:Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupGPS;

    .line 371
    new-instance v0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$GpsSettingsObserver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$GpsSettingsObserver;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;Lcom/android/settings/HtcCdmaGPSLocationSettingV2$1;)V

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mGpsSettingsObserver:Lcom/android/settings/HtcCdmaGPSLocationSettingV2$GpsSettingsObserver;

    .line 373
    new-instance v0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupGoogleLBS;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupGoogleLBS;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;Lcom/android/settings/HtcCdmaGPSLocationSettingV2$1;)V

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mSetupGoogleLBS:Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupGoogleLBS;

    .line 374
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->updateButtonState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->set_GPS_One_enable(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->set_GPS_Satellites_enable(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_VerizonLocatonService:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_3rdPartyLocationService:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->updateToggles()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mNetwork:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method private pluginExtraComponents_LocationService()V
    .locals 7

    .prologue
    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v3, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/preference/HtcPreference;>;"
    const/4 v0, 0x0

    .line 135
    .local v0, category:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getPhoneFinderVisibility(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 136
    new-instance v2, Lcom/android/settings/framework/preference/location/HtcLocatePreference;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/preference/location/HtcLocatePreference;-><init>(Landroid/content/Context;)V

    .line 137
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    :cond_0
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getIntegrateGoogleNavigationVisibility(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 141
    new-instance v2, Lcom/android/settings/framework/preference/location/HtcIntegrateGoogleNavigationPreference;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/preference/location/HtcIntegrateGoogleNavigationPreference;-><init>(Landroid/content/Context;)V

    .line 142
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    :cond_1
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getReinstallLocationAppVisibility(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 146
    new-instance v2, Lcom/android/settings/framework/preference/location/HtcRecoverLocationsPreference;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/preference/location/HtcRecoverLocationsPreference;-><init>(Landroid/content/Context;)V

    .line 147
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 151
    .local v5, size:I
    if-lez v5, :cond_3

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    .line 154
    .local v4, root:Lcom/htc/preference/HtcPreferenceScreen;
    if-nez v4, :cond_4

    .line 168
    .end local v4           #root:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_3
    return-void

    .line 159
    .restart local v4       #root:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_4
    new-instance v0, Lcom/htc/preference/HtcPreferenceCategory;

    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 160
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceCategory;
    const v6, 0x7f0c00b1

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 161
    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 164
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 165
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private set_GPS_One_enable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mSetupVZW:Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupVZW;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    return-void
.end method

.method private set_GPS_Satellites_enable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mSetupGPS:Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupGPS;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 360
    return-void
.end method

.method private set_Google_LBS_enable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mSetupGoogleLBS:Lcom/android/settings/HtcCdmaGPSLocationSettingV2$setupGoogleLBS;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    return-void
.end method

.method private showWarningMessageOnBoot()V
    .locals 3

    .prologue
    .line 265
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c03f8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c03f3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$4;

    invoke-direct {v2, p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$4;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c03fa

    new-instance v2, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$3;

    invoke-direct {v2, p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$3;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 282
    return-void
.end method

.method private updateButtonState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0c0600

    .line 225
    const/4 v0, 0x1

    .line 226
    .local v0, allowGPS:Z
    const/4 v2, 0x1

    .line 227
    .local v2, allowVzwLBS:Z
    const/4 v1, 0x1

    .line 229
    .local v1, allowGoogleLBS:Z
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v3, v6}, Lcom/android/settings/framework/bridge/HtcLocalDevicePolicyManager;->getAllowGPSStatus(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 232
    const-string v3, "HtcCdmaGPSLocationSetting"

    const-string v4, "OoO DevicePolicyManager DISABLE GPS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_3rdPartyLocationService:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 238
    :goto_0
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v3, v6}, Lcom/android/settings/framework/bridge/HtcLocalDevicePolicyManager;->getAllowVzwLBSStatus(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_1

    .line 240
    const/4 v2, 0x0

    .line 241
    const-string v3, "HtcCdmaGPSLocationSetting"

    const-string v4, "OoO DevicePolicyManager DISABLE VzwLBS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_VerizonLocatonService:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 247
    :goto_1
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v3, v6}, Lcom/android/settings/framework/bridge/HtcLocalDevicePolicyManager;->getAllowGoogleLBSStatus(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_2

    .line 249
    const/4 v1, 0x0

    .line 250
    const-string v3, "HtcCdmaGPSLocationSetting"

    const-string v4, "OoO DevicePolicyManager DISABLE GoogleLBS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mNetwork:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 257
    :goto_2
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_3rdPartyLocationService:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 258
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_VerizonLocatonService:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 259
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mNetwork:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 261
    return-void

    .line 235
    :cond_0
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_3rdPartyLocationService:Lcom/htc/preference/HtcCheckBoxPreference;

    const v4, 0x7f0c0401

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_VerizonLocatonService:Lcom/htc/preference/HtcCheckBoxPreference;

    const v4, 0x7f0c03ff

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 253
    :cond_2
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mNetwork:Lcom/htc/preference/HtcCheckBoxPreference;

    const v4, 0x7f0c0403

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_2
.end method

.method private updateToggles()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 289
    .local v2, enableGPSsatellites:Z
    iget-object v6, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_E911_ONLY:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v6, :cond_0

    .line 290
    iget-object v6, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_E911_ONLY:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 291
    iget-object v6, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_E911_ONLY:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 295
    .local v5, res:Landroid/content/ContentResolver;
    const-string v6, "network"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 297
    .local v4, isUseNetworkOn:Z
    iget-object v6, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mNetwork:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v6, :cond_1

    .line 298
    iget-object v6, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mNetwork:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 301
    :cond_1
    if-eqz v4, :cond_4

    .line 304
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.htc.app.autosetting.location"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    :goto_0
    iget-object v6, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_3rdPartyLocationService:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v6, :cond_2

    .line 322
    iget-object v6, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_3rdPartyLocationService:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 325
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vzw_lbs"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 328
    .local v1, enableGPSONE:Z
    iget-object v6, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_VerizonLocatonService:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v6, :cond_3

    .line 329
    iget-object v6, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_VerizonLocatonService:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 331
    :cond_3
    return-void

    .line 310
    .end local v1           #enableGPSONE:Z
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_sync_check"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 311
    .local v0, autoSyncCheck:I
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_set_time_city_locale"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_apply_set_time_city_locale"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.htc.app.autosetting.cancel"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "auto_sync_check"

    const-string v7, "1"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, v3}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 74
    iput-object p0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mContext:Landroid/content/Context;

    .line 77
    :cond_0
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->addPreferencesFromResource(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    const-string v1, "e911_only_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_E911_ONLY:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    const-string v1, "verizon_lbs_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_VerizonLocatonService:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    const-string v1, "3rdparty_lbs_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_3rdPartyLocationService:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    const-string v1, "google_lbs_key"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mNetwork:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    .local v6, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 90
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mGpsSettingsObserver:Lcom/android/settings/HtcCdmaGPSLocationSettingV2$GpsSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 95
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v0, v8, :cond_1

    .line 96
    sget-object v0, Lcom/android/settings/HtcCdmaFeatureReceiver;->contentObserverOfGPS:Lcom/android/settings/HtcCdmaFeatureReceiver$ContentObserverOfGPS;

    if-nez v0, :cond_1

    .line 97
    invoke-static {p0}, Lcom/android/settings/HtcCdmaFeatureReceiver;->checkGPSONEObserver(Landroid/content/Context;)V

    .line 102
    :cond_1
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    if-ne v0, v8, :cond_2

    .line 103
    sget-object v0, Lcom/android/settings/HtcCdmaFeatureReceiver;->contentObserverOfGPS:Lcom/android/settings/HtcCdmaFeatureReceiver$ContentObserverOfGPS;

    if-nez v0, :cond_2

    .line 104
    invoke-static {p0}, Lcom/android/settings/HtcCdmaFeatureReceiver;->checkGPSONEObserver(Landroid/content/Context;)V

    .line 109
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->pluginExtraComponents_LocationService()V

    .line 113
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 118
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_3

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mIntentFilter:Landroid/content/IntentFilter;

    .line 120
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    :cond_3
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    .line 212
    const-string v0, "HtcCdmaGPSLocationSetting"

    const-string v1, "OoO onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 6
    .parameter "HtcPreferenceScreen"
    .parameter "preference"

    .prologue
    const v5, 0x104000a

    const/high16 v3, 0x104

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 389
    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_VerizonLocatonService:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 391
    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_VerizonLocatonService:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 392
    .local v0, enable:Z
    if-ne v0, v2, :cond_1

    .line 393
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c03fe

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c03f2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$6;

    invoke-direct {v2, p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$6;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V

    invoke-virtual {v1, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$5;

    invoke-direct {v2, p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$5;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V

    invoke-virtual {v1, v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 464
    .end local v0           #enable:Z
    :cond_0
    :goto_0
    return v4

    .line 411
    .restart local v0       #enable:Z
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->set_GPS_One_enable(Z)V

    goto :goto_0

    .line 414
    .end local v0           #enable:Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_3rdPartyLocationService:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 415
    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mCB_3rdPartyLocationService:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 416
    .restart local v0       #enable:Z
    if-ne v0, v2, :cond_3

    .line 417
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0400

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c03f6

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$8;

    invoke-direct {v2, p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$8;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V

    invoke-virtual {v1, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$7;

    invoke-direct {v2, p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$7;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V

    invoke-virtual {v1, v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 435
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->set_GPS_Satellites_enable(Z)V

    goto :goto_0

    .line 437
    .end local v0           #enable:Z
    :cond_4
    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mNetwork:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mNetwork:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 440
    .restart local v0       #enable:Z
    const-string v1, "HtcCdmaGPSLocationSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OoO will change Google LBS to ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct {p0, v0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->set_Google_LBS_enable(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 184
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 186
    invoke-direct {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->updateToggles()V

    .line 188
    sget-boolean v1, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "GPSONE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, mShortCutOfSecrectCode:Ljava/lang/String;
    const-string v1, "HtcCdmaGPSLocationSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OoO getExtra ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    .end local v0           #mShortCutOfSecrectCode:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    invoke-direct {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->updateButtonState()V

    .line 203
    return-void

    .line 194
    .restart local v0       #mShortCutOfSecrectCode:Ljava/lang/String;
    :cond_1
    const-string v1, "GPSONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->showWarningMessageOnBoot()V

    goto :goto_0
.end method
