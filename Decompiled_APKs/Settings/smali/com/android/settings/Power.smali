.class public Lcom/android/settings/Power;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "Power.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
.field private static DAYS_OF_WEEK:I = 0x0

.field public static final HTC_POWERSAVER_OFF:Ljava/lang/String; = "com.android.server.htcpowersaver.action.OFF"

.field public static final HTC_POWERSAVER_ON:Ljava/lang/String; = "com.android.server.htcpowersaver.action.ON"

#the value of this static final field might be set in the static constructor
.field private static final IS_ORANGE_UK:Z = false

.field private static final KEY_TOGGLE_FASTBOOT:Ljava/lang/String; = "enable_fastboot"

.field public static final POWERSAVER_STATE:Ljava/lang/String; = "com.android.settings.power.powersaver.state"

.field public static final STATUS_NORMAL:I = 0x1f40

.field public static final STATUS_POWER_SAVING_AUTO:I = 0x1f41

.field public static final STATUS_POWER_SAVING_MANUAL:I = 0x1f42

.field private static final TAG:Ljava/lang/String; = "PowersaverSettings"

.field private static mEndhour:I

.field private static mEndminute:I

.field private static mStarthour:I

.field private static mStartminute:I


# instance fields
.field private final DISABLE_POWERSAVER_UI:I

.field private final DISABLE_SETTINGS:I

.field private final ENABLE_POWERSAVER_UI:I

.field private IS_2G_UP:Z

.field private POWERSAVER_LEVEL_CHANGE:Ljava/lang/String;

.field private final REVERT_SETTINGS:I

.field private SMARTSYNC_BROADCAST_TIME_CONFIG_CANCEL_SETTING:Ljava/lang/String;

.field private SMARTSYNC_BROADCAST_TIME_CONFIG_SETTING:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_SERVICE_RUNNING:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING:Ljava/lang/String;

.field private items:[Ljava/lang/CharSequence;

.field private m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mAutoWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBatteryLevel:I

.field private mEnablePowerEfficiencyPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mHtcPreferenceScreenPowersaverSetting:Lcom/htc/preference/HtcPreferenceScreen;

.field private mNewPower35:Z

.field private mNotificationPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mPlugState:Z

.field private mPowerEfficiencyStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerModeOnAtPref:Lcom/htc/preference/HtcListPreference;

.field private mPowerModePref:Lcom/htc/preference/HtcListPreference;

.field private mPowerSaverSharedpref:Landroid/content/SharedPreferences;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSetSchedulePref:Lcom/htc/preference/HtcListPreference;

.field private mSleepModeEndHtcPreference:Lcom/htc/preference/HtcPreference;

.field private mSleepModeStartHtcPreference:Lcom/htc/preference/HtcPreference;

.field private final mStateHandler:Landroid/os/Handler;

.field private mTogglefastBoot:Lcom/htc/preference/HtcCheckBoxPreference;

.field private sleepModeDescriptionitems:[Ljava/lang/CharSequence;

.field private sleepModeitems:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v0, 0x100

    .line 110
    sput v0, Lcom/android/settings/Power;->mStarthour:I

    .line 111
    sput v0, Lcom/android/settings/Power;->mStartminute:I

    .line 112
    sput v0, Lcom/android/settings/Power;->mEndhour:I

    .line 113
    sput v0, Lcom/android/settings/Power;->mEndminute:I

    .line 115
    const/4 v0, 0x7

    sput v0, Lcom/android/settings/Power;->DAYS_OF_WEEK:I

    .line 143
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x71

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/Power;->IS_ORANGE_UK:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0x7b

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 85
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/settings/Power;->DISABLE_SETTINGS:I

    .line 86
    const/16 v0, 0xfa1

    iput v0, p0, Lcom/android/settings/Power;->REVERT_SETTINGS:I

    .line 87
    const/16 v0, 0xfa2

    iput v0, p0, Lcom/android/settings/Power;->ENABLE_POWERSAVER_UI:I

    .line 88
    const/16 v0, 0xfa3

    iput v0, p0, Lcom/android/settings/Power;->DISABLE_POWERSAVER_UI:I

    .line 117
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_SERVICE_RUNNING"

    iput-object v0, p0, Lcom/android/settings/Power;->SMARTSYNC_SERVICE_BROADCAST_SERVICE_RUNNING:Ljava/lang/String;

    .line 118
    const-string v0, "SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING"

    iput-object v0, p0, Lcom/android/settings/Power;->SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING:Ljava/lang/String;

    .line 119
    const-string v0, "SMARTSYNC_BROADCAST_TIME_CONFIG_SETTING"

    iput-object v0, p0, Lcom/android/settings/Power;->SMARTSYNC_BROADCAST_TIME_CONFIG_SETTING:Ljava/lang/String;

    .line 120
    const-string v0, "SMARTSYNC_BROADCAST_TIME_CONFIG_CANCEL_SETTING"

    iput-object v0, p0, Lcom/android/settings/Power;->SMARTSYNC_BROADCAST_TIME_CONFIG_CANCEL_SETTING:Ljava/lang/String;

    .line 124
    const-string v0, "com.android.settings.framework.activity.powersaver.powersaver_level_change"

    iput-object v0, p0, Lcom/android/settings/Power;->POWERSAVER_LEVEL_CHANGE:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Power;->mPowerEfficiencyStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x8a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xf

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v4, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x88

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x89

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x9e

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/Power;->mNewPower35:Z

    .line 147
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v4, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eqz v0, :cond_2

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x34

    if-ne v0, v3, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v4, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-nez v0, :cond_4

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/Power;->IS_2G_UP:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/settings/Power;->mPlugState:Z

    .line 151
    iput v1, p0, Lcom/android/settings/Power;->mBatteryLevel:I

    .line 270
    new-instance v0, Lcom/android/settings/Power$1;

    invoke-direct {v0, p0}, Lcom/android/settings/Power$1;-><init>(Lcom/android/settings/Power;)V

    iput-object v0, p0, Lcom/android/settings/Power;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 293
    new-instance v0, Lcom/android/settings/Power$2;

    invoke-direct {v0, p0}, Lcom/android/settings/Power$2;-><init>(Lcom/android/settings/Power;)V

    iput-object v0, p0, Lcom/android/settings/Power;->mStateHandler:Landroid/os/Handler;

    .line 598
    new-instance v0, Lcom/android/settings/Power$3;

    invoke-direct {v0, p0}, Lcom/android/settings/Power$3;-><init>(Lcom/android/settings/Power;)V

    iput-object v0, p0, Lcom/android/settings/Power;->mHandler:Landroid/os/Handler;

    return-void

    :cond_3
    move v0, v1

    .line 132
    goto :goto_0

    :cond_4
    move v2, v1

    .line 147
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/Power;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/Power;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/Power;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/settings/Power;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/Power;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/settings/Power;->mPlugState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/Power;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/settings/Power;->mPlugState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/Power;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/Power;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static is2gSim()Z
    .locals 3

    .prologue
    .line 681
    const-string v1, "gsm.sim.types"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, simType:Ljava/lang/String;
    const-string v1, "RIL_2G_SIM_CARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static isSimAllowed(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 631
    const/4 v1, 0x0

    .line 633
    .local v1, getContext:Landroid/content/Context;
    :try_start_0
    const-string v3, "com.htc.smartnetwork"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 640
    :goto_0
    if-eqz v1, :cond_0

    .line 641
    const-string v3, "PowersaverSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " get white list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "PREF_SIMCARD_IS_WHITE_LIST"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "PREF_SIMCARD_IS_WHITE_LIST"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 645
    :goto_1
    return v2

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PowersaverSettings"

    const-string v4, " package not found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 636
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 637
    .local v0, e:Ljava/lang/SecurityException;
    const-string v3, "PowersaverSettings"

    const-string v4, " catch SecurityException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 644
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_0
    const-string v3, "PowersaverSettings"

    const-string v4, " get white list fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static isSimInWhiteList(Ljava/lang/String;)Z
    .locals 8
    .parameter "simOpStr"

    .prologue
    .line 662
    const/4 v2, 0x0

    .line 663
    .local v2, isValid:Z
    if-eqz p0, :cond_0

    .line 664
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "46692"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "46601"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "46697"

    aput-object v7, v5, v6

    .line 670
    .local v5, whiteList:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 671
    .local v4, str:Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 672
    const/4 v2, 0x1

    .line 677
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #str:Ljava/lang/String;
    .end local v5           #whiteList:[Ljava/lang/String;
    :cond_0
    return v2

    .line 670
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #str:Ljava/lang/String;
    .restart local v5       #whiteList:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isfastBootAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_fastboot"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private pluginExtraComponents_BatteryStatus()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/Power;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 565
    .local v3, root:Lcom/htc/preference/HtcPreferenceScreen;
    new-instance v2, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/Power;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 566
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    const v4, 0x7f0c0498

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 567
    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 569
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;

    invoke-virtual {p0}, Lcom/android/settings/Power;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0d0012

    invoke-direct {v1, v4, v7, v5}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 572
    .local v1, BatteryStatusPreference:Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 573
    const v4, 0x7f0c0a32

    invoke-virtual {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->setTitle(I)V

    .line 574
    invoke-virtual {v1, v6}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryStatusPreference;->setSelectable(Z)V

    .line 575
    invoke-virtual {p0, v1}, Lcom/android/settings/Power;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 577
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;

    invoke-virtual {p0}, Lcom/android/settings/Power;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4, v7}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 579
    .local v0, BatteryProgressPreference:Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;
    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 580
    const v4, 0x7f0c0a33

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->setTitle(I)V

    .line 581
    invoke-virtual {v0, v6}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->setSelectable(Z)V

    .line 582
    invoke-virtual {p0, v0}, Lcom/android/settings/Power;->addCallback(Lcom/htc/preference/HtcPreference;)V

    .line 596
    return-void
.end method

.method private setfastBootAllowed(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_fastboot"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 628
    return-void

    .line 626
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private storePowerEfficiencyNormalsettings()V
    .locals 6

    .prologue
    const/16 v5, 0x66

    const/4 v4, 0x0

    .line 422
    const-string v0, "PowersaverSettings"

    const-string v1, "storePowerEfficiencyNormalsettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "powersaver_screen_brightness_settings_mode"

    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 430
    iget-object v0, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "powersaver_screen_brightness_settings"

    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v5}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 436
    iget-object v0, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "power_efficiency_sleep_policy"

    invoke-virtual {p0}, Lcom/android/settings/Power;->get_WIFI_SLEEP_POLICY()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 440
    iget-object v0, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "power_efficiency_always_on"

    invoke-virtual {p0}, Lcom/android/settings/Power;->get_POWER_SAVE_3G()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 444
    iget-object v0, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "power_efficiency_auto_sync"

    invoke-virtual {p0}, Lcom/android/settings/Power;->getAutoSync()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 449
    const-string v0, "PowersaverSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_SCREEN_BRIGHTNESS_SETTINGS_MODE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v0, "PowersaverSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_SCREEN_BRIGHTNESS_SETTINGS      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v5}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method


# virtual methods
.method public GetBackgroundDataSetting()I
    .locals 5

    .prologue
    .line 500
    const/4 v1, 0x0

    .line 501
    .local v1, nRet:I
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/Power;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 502
    .local v0, CM:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 503
    :goto_0
    const-string v2, "PowersaverSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetCurrentSetting: nRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return v1

    .line 502
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAutoSync()Z
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public getNotifyMeEnable()Z
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v1, "powersaver_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public get_POWER_SAVE_3G()I
    .locals 3

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "3g_power_save"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public get_WIFI_SLEEP_POLICY()I
    .locals 3

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_sleep_policy"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 344
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 348
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 163
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const-string v2, "PowersaverSettings"

    const-string v3, "[PSaver]onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v2, "PowersaverSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sense version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 168
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/Power;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "powersaver_shared"

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    .line 171
    const v2, 0x7f050027

    invoke-virtual {p0, v2}, Lcom/android/settings/Power;->addPreferencesFromResource(I)V

    .line 193
    const-string v2, "enable_fastboot"

    invoke-virtual {p0, v2}, Lcom/android/settings/Power;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/Power;->mTogglefastBoot:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 194
    iget-object v2, p0, Lcom/android/settings/Power;->mTogglefastBoot:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/settings/Power;->mTogglefastBoot:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/Power;->isfastBootAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Power;->requestHandlers()V

    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 203
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.settings.framework.activity.powersaver.powersaver_level_change"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v2, "com.android.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v2, "com.android.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/android/settings/Power;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/Power;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    const-string v2, "PowersaverSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2G UI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/Power;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "show_2g_ui"

    invoke-static {v4, v5, v7}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v2, "PowersaverSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2G default:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powersaver_switch_2G_call"

    invoke-static {v4, v5, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/Power;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "show_2g_ui"

    invoke-static {v2, v3, v7}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 216
    iget-boolean v2, p0, Lcom/android/settings/Power;->IS_2G_UP:Z

    if-eqz v2, :cond_7

    .line 217
    const-string v2, "powersaver_switch_2G_call"

    invoke-virtual {p0, v2}, Lcom/android/settings/Power;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 218
    iget-object v2, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "powersaver_switch_2G_call"

    invoke-static {v2, v3, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_6

    .line 220
    iget-object v2, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 239
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/Power;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Power;->isSimAllowed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 240
    iget-object v2, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_2

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/Power;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 242
    iput-object v6, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 247
    :cond_2
    const-string v2, "powersaver_location_aware_wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/Power;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/Power;->mAutoWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 248
    iget-object v2, p0, Lcom/android/settings/Power;->mAutoWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v4, "powersaver_location_aware_wifi"

    invoke-interface {v3, v4, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 250
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_3

    .line 251
    iget-object v2, p0, Lcom/android/settings/Power;->mAutoWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_3

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/Power;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/Power;->mAutoWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 253
    iput-object v6, p0, Lcom/android/settings/Power;->mAutoWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 258
    :cond_3
    iget-object v2, p0, Lcom/android/settings/Power;->mAutoWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_4

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/Power;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/Power;->mAutoWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 260
    iput-object v6, p0, Lcom/android/settings/Power;->mAutoWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 262
    :cond_4
    iget-object v2, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_5

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/Power;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 264
    iput-object v6, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 267
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/Power;->pluginExtraComponents_BatteryStatus()V

    .line 268
    return-void

    .line 222
    :cond_6
    iget-object v2, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 225
    :cond_7
    const-string v2, "powersaver_switch_2G_call"

    invoke-virtual {p0, v2}, Lcom/android/settings/Power;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 226
    iget-object v2, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/Power;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 228
    iput-object v6, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    goto/16 :goto_0

    .line 232
    :cond_8
    const-string v2, "powersaver_switch_2G_call"

    invoke-virtual {p0, v2}, Lcom/android/settings/Power;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 233
    iget-object v2, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/Power;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 235
    iput-object v6, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    .line 318
    const-string v0, "PowersaverSettings"

    const-string v1, "[PSaver]onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 324
    const-string v0, "PowersaverSettings"

    const-string v1, "[PSaver]onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/Power;->finish()V

    .line 326
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 523
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, key:Ljava/lang/String;
    const-string v3, "powersaver_set_schedule"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    .line 527
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 528
    .local v2, value:I
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setSchedule(Landroid/content/ContentResolver;I)V

    .line 529
    iget-object v3, p0, Lcom/android/settings/Power;->mSetSchedulePref:Lcom/htc/preference/HtcListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 530
    if-nez v2, :cond_1

    .line 531
    iget-object v3, p0, Lcom/android/settings/Power;->mSetSchedulePref:Lcom/htc/preference/HtcListPreference;

    const v4, 0x7f0c056c

    invoke-virtual {p0, v4}, Lcom/android/settings/Power;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 536
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 537
    .local v0, it:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/Power;->POWERSAVER_LEVEL_CHANGE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    invoke-virtual {p0, v0}, Lcom/android/settings/Power;->sendBroadcast(Landroid/content/Intent;)V

    .line 539
    const-string v3, "PowersaverSettings"

    const-string v4, "POWERSAVER_LEVEL_CHANGE send"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .end local v0           #it:Landroid/content/Intent;
    .end local v2           #value:I
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 533
    .restart local v2       #value:I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/Power;->mSetSchedulePref:Lcom/htc/preference/HtcListPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/Power;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0c056b

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/16 v8, 0x1f40

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 353
    iget-object v3, p0, Lcom/android/settings/Power;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v3, :cond_4

    .line 355
    iget-object v3, p0, Lcom/android/settings/Power;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setEnable(Landroid/content/ContentResolver;I)V

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setEnable_35(Landroid/content/ContentResolver;I)V

    .line 359
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 360
    .local v1, it:Landroid/content/Intent;
    const-string v3, "com.android.settings.framework.activity.powersaver.powersaver_level_change"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v3, "IS_POWERSAVER_ENABLE"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0, v1}, Lcom/android/settings/Power;->sendBroadcast(Landroid/content/Intent;)V

    .line 363
    const-string v3, "PowersaverSettings"

    const-string v4, "Send Power enable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v1           #it:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    return v3

    .line 367
    :cond_1
    const-string v3, "PowersaverSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Power saver state:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "STATUS_POWER_SAVING_AUTO"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "STATUS_POWER_SAVING_AUTO"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x1f41

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/settings/Power;->mBatteryLevel:I

    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->getSchedule(Landroid/content/ContentResolver;)I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "STATUS_POWER_SAVING_AUTO"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x1f42

    if-ne v3, v4, :cond_3

    .line 370
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setEnable(Landroid/content/ContentResolver;I)V

    .line 373
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->setEnable_35(Landroid/content/ContentResolver;I)V

    .line 376
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 377
    .restart local v1       #it:Landroid/content/Intent;
    const-string v3, "com.android.settings.framework.activity.powersaver.powersaver_level_change"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v3, "IS_POWERSAVER_ENABLE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    invoke-virtual {p0, v1}, Lcom/android/settings/Power;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    const-string v3, "PowersaverSettings"

    const-string v4, "Send Power disable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/Power;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 384
    .local v2, notificationManager:Landroid/app/NotificationManager;
    const-string v3, "Powersaver"

    invoke-virtual {v2, v3, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 387
    .end local v1           #it:Landroid/content/Intent;
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/Power;->mTogglefastBoot:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 389
    iget-object v3, p0, Lcom/android/settings/Power;->mTogglefastBoot:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 390
    .local v0, fastBootON:Z
    invoke-direct {p0, v0}, Lcom/android/settings/Power;->setfastBootAllowed(Z)V

    goto/16 :goto_0

    .line 391
    .end local v0           #fastBootON:Z
    :cond_5
    iget-object v3, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v3, p2, :cond_0

    .line 392
    iget-object v3, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v3, :cond_0

    .line 393
    iget-object v3, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "powersaver_switch_2G_call"

    iget-object v7, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 394
    const-string v3, "PowersaverSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the change preference powersaver_switch_2G_call is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "powersaver_switch_2G_call"

    invoke-interface {v7, v8, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "powersaver_switch_2G_call"

    iget-object v3, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_1
    invoke-static {v6, v7, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 398
    iget-object v3, p0, Lcom/android/settings/Power;->m2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 399
    iget-object v3, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "KEY_WIFI_SAVE_STATE"

    iget-object v7, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "powersaver_wifi"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 400
    iget-object v3, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "powersaver_wifi"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 401
    const-string v3, "PowersaverSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the preference powersaver_wifi is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "powersaver_wifi"

    invoke-interface {v7, v8, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "powersaver_wifi"

    invoke-static {v3, v4, v5}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 409
    :goto_2
    const-string v3, "PowersaverSettings"

    const-string v4, "Send switch call Intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 411
    .restart local v1       #it:Landroid/content/Intent;
    const-string v3, "POWERSAVER_SWITCH_TO_2G_CALL"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/Power;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v1           #it:Landroid/content/Intent;
    :cond_6
    move v3, v5

    .line 395
    goto :goto_1

    .line 404
    :cond_7
    iget-object v3, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "powersaver_wifi"

    iget-object v7, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "KEY_WIFI_SAVE_STATE"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 405
    const-string v3, "PowersaverSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the change preference powersaver_wifi is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "powersaver_wifi"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "powersaver_wifi"

    iget-object v7, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "powersaver_wifi"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_3
    invoke-static {v3, v6, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_8
    move v4, v5

    goto :goto_3
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 330
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStart()V

    .line 332
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 337
    const-string v0, "PowersaverSettings"

    const-string v1, "[PSaver]onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStop()V

    .line 340
    return-void
.end method

.method public setAutoSync(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/android/settings/Power;->GetBackgroundDataSetting()I

    move-result v0

    .line 464
    .local v0, nBackgroundDataSetting:I
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 466
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 472
    :cond_0
    return-void
.end method

.method public setNotifyMeEnable(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/settings/Power;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "powersaver_notification"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 510
    return-void
.end method

.method public set_POWER_SAVE_3G(I)V
    .locals 2
    .parameter "iValue"

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "3g_power_save"

    invoke-static {v0, v1, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 496
    return-void
.end method

.method public set_WIFI_SLEEP_POLICY(I)V
    .locals 2
    .parameter "iValue"

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/settings/Power;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_sleep_policy"

    invoke-static {v0, v1, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 484
    return-void
.end method
