.class public Lcom/android/settings/PowersaverListActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowersaverListActivity.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private IS_2G_UP:Z

.field private mBackgrounfDataPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mBluetoothPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mCDMAPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mCPUPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mDataConnectionPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mFramePref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mHapticFeedbackPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mNewPower35:Z

.field private mOnscreenAnimationPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mPowerSaverSharedpref:Landroid/content/SharedPreferences;

.field private mScreenBrSettingPref:Lcom/htc/preference/HtcSeekBarDialogPreference;

.field private mScreenBrightnessPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mScreenTimeoutPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mScreenTimeoutSettingPref:Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;

.field private mSwitch2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "PowersaverListActivity"

    sput-object v0, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x7b

    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 50
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

    if-ne v0, v3, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/PowersaverListActivity;->mNewPower35:Z

    .line 60
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

    if-ne v0, v3, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v4, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/PowersaverListActivity;->IS_2G_UP:Z

    return-void

    :cond_4
    move v0, v1

    .line 50
    goto :goto_0
.end method

.method private static is2gSim()Z
    .locals 3

    .prologue
    .line 433
    const-string v1, "gsm.sim.types"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
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

    .line 384
    const/4 v1, 0x0

    .line 386
    .local v1, getContext:Landroid/content/Context;
    :try_start_0
    const-string v3, "com.htc.smartnetwork"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 393
    :goto_0
    if-eqz v1, :cond_0

    .line 394
    sget-object v3, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

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

    .line 395
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "PREF_SIMCARD_IS_WHITE_LIST"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 398
    :goto_1
    return v2

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    const-string v4, " package not found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 389
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v3, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    const-string v4, " catch SecurityException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_0
    sget-object v3, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    const-string v4, " get white list fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static isSimInWhiteList(Ljava/lang/String;)Z
    .locals 8
    .parameter "simOpStr"

    .prologue
    .line 414
    const/4 v2, 0x0

    .line 415
    .local v2, isValid:Z
    if-eqz p0, :cond_0

    .line 416
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

    .line 422
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

    .line 423
    .local v4, str:Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 424
    const/4 v2, 0x1

    .line 429
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #str:Ljava/lang/String;
    .end local v5           #whiteList:[Ljava/lang/String;
    :cond_0
    return v2

    .line 422
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #str:Ljava/lang/String;
    .restart local v5       #whiteList:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBooleanFromFile()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 439
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v6, "/sys/devices/system/cpu/kernel_max"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 441
    :cond_0
    sget-object v6, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    const-string v7, "getBooleanFromFile() - File does not exist!! : "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return v4

    .line 444
    .restart local v1       #file:Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    .line 445
    .local v2, input:Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/BufferedReader;

    .end local v2           #input:Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v7, 0x1

    invoke-direct {v2, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 446
    .restart local v2       #input:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 447
    .local v3, line:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 448
    sget-object v6, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    const-string v7, "getBooleanFromFile() - BufferedReader input = null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_1
    if-eqz v3, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_3

    .line 456
    sget-object v6, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    const-string v7, "getBooleanFromFile() -  false = 0"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    .end local v1           #file:Ljava/io/File;
    .end local v2           #input:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 463
    .local v0, ex:Ljava/lang/Exception;
    sget-object v4, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    const-string v6, "getBooleanFromFile() - Exception"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 464
    goto :goto_0

    .line 451
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #input:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 452
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    .line 459
    :cond_3
    sget-object v4, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBooleanFromFile() -  true ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v5

    .line 460
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget-object v5, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PSaver]onCreate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "bb"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "aa"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 70
    .local v3, resolver:Landroid/content/ContentResolver;
    const v5, 0x7f050029

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->addPreferencesFromResource(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "powersaver_shared"

    const/4 v7, 0x7

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    .line 75
    const-string v5, "powersaver_dataconnection"

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mDataConnectionPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 76
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mDataConnectionPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_dataconnection"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 78
    const-string v5, "powersaver_backgrounddata"

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mBackgrounfDataPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mBackgrounfDataPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 82
    const-string v5, "powersaver_wifi"

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 83
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_wifi"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 87
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xad

    if-eq v5, v6, :cond_7

    .line 90
    const-string v5, "powersaver_CDMAonly"

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mCDMAPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 91
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mCDMAPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mCDMAPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 101
    :cond_0
    :goto_0
    const-string v5, "powersaver_bluetooth"

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mBluetoothPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 102
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mBluetoothPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_bluetooth"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 105
    const-string v5, "powersaver_screen_brightness"

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mScreenBrightnessPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 106
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mScreenBrightnessPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_screen_brightness"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 109
    const-string v5, "powersaver_screen_brightness_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcSeekBarDialogPreference;

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mScreenBrSettingPref:Lcom/htc/preference/HtcSeekBarDialogPreference;

    .line 111
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v6, "powersaver_screen_brightness_settings"

    const/16 v7, 0x66

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 112
    .local v1, CurrentBrightness:I
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v6, "powersaver_screen_brightness_settings_auto"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, CurrentAuto:I
    if-nez v0, :cond_8

    .line 115
    mul-int/lit8 v5, v1, 0x64

    div-int/lit16 v4, v5, 0xff

    .line 116
    .local v4, value:I
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mScreenBrSettingPref:Lcom/htc/preference/HtcSeekBarDialogPreference;

    const v6, 0x7f0c059d

    invoke-virtual {p0, v6}, Lcom/android/settings/PowersaverListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcSeekBarDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    .end local v4           #value:I
    :goto_1
    const-string v5, "powersaver_screen_timeout_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mScreenTimeoutSettingPref:Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;

    .line 125
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v6, "powersaver_screen_timeout_settings"

    const/16 v7, 0x7530

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 126
    .local v2, nTimeoutValue:I
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mScreenTimeoutSettingPref:Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->setValue(Ljava/lang/String;)V

    .line 127
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mScreenTimeoutSettingPref:Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;

    const v6, 0x7f0c05a1

    invoke-virtual {p0, v6}, Lcom/android/settings/PowersaverListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mScreenTimeoutSettingPref:Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;

    invoke-virtual {v8, v2}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->getEntryText(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/framework/activity/powersaver/PowersaverScreenTimeoutPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    const-string v5, "powersaver_screen_timeout"

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mScreenTimeoutPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 133
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mScreenTimeoutPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_screen_timeout"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 136
    const-string v5, "powersaver_onscreen_animation"

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mOnscreenAnimationPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 137
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mOnscreenAnimationPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_onscreen_animation"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 140
    const-string v5, "powersaver_haptic_feedback"

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mHapticFeedbackPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 141
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mHapticFeedbackPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_haptic_feedback"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 144
    const-string v5, "powersaver_reduce_CPU"

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mCPUPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 145
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mCPUPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_reduce_CPU"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 148
    const-string v5, "powersaver_reduce_frame_rate"

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mFramePref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 149
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mFramePref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_reduce_frame_rate"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 151
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_2

    .line 152
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mCPUPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mCPUPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 154
    :cond_1
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mFramePref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mFramePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 160
    :cond_2
    sget-object v5, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ccccccccc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "powersaver_switch_2G_call"

    invoke-static {v7, v8, v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v5, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aaaaaaaa"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "show_2g_ui"

    invoke-static {v7, v8, v10}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "show_2g_ui"

    invoke-static {v5, v6, v10}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 165
    iget-boolean v5, p0, Lcom/android/settings/PowersaverListActivity;->IS_2G_UP:Z

    if-nez v5, :cond_a

    .line 166
    sget-object v5, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    const-string v6, "aaaaaaaa"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v5, "powersaver_switch_2G_call"

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mSwitch2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "powersaver_switch_2G_call"

    invoke-static {v5, v6, v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_9

    .line 169
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mSwitch2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 174
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "powersaver_switch_2G_call"

    invoke-static {v5, v6, v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 175
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "powersaver_wifi"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    sget-object v5, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the change preference powersaver_wifi is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v8, "powersaver_wifi"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v5, "powersaver_wifi"

    invoke-static {v3, v5, v10}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 179
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 204
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/PowersaverListActivity;->isSimAllowed(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 205
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mSwitch2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_4

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mSwitch2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 208
    :cond_4
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 209
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_wifi"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 213
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getBooleanFromFile()Z

    move-result v5

    if-nez v5, :cond_6

    .line 214
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mCPUPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_6

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mCPUPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 218
    :cond_6
    return-void

    .line 96
    .end local v0           #CurrentAuto:I
    .end local v1           #CurrentBrightness:I
    .end local v2           #nTimeoutValue:I
    :cond_7
    const-string v5, "powersaver_CDMAonly"

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mCDMAPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 97
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mCDMAPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_CDMAonly"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 120
    .restart local v0       #CurrentAuto:I
    .restart local v1       #CurrentBrightness:I
    :cond_8
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mScreenBrSettingPref:Lcom/htc/preference/HtcSeekBarDialogPreference;

    const v6, 0x7f0c059e

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcSeekBarDialogPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 171
    .restart local v2       #nTimeoutValue:I
    :cond_9
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mSwitch2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 182
    :cond_a
    sget-object v5, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    const-string v6, "bbbbbbbbbb"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v5, "powersaver_switch_2G_call"

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mSwitch2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 184
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mSwitch2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_b

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mSwitch2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 187
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "powersaver_switch_2G_call"

    invoke-static {v5, v6, v11}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_c

    .line 188
    sget-object v5, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    const-string v6, "ddddddddddddb"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_wifi"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 190
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 192
    :cond_c
    sget-object v5, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    const-string v6, "eeeeeeeeeee"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v7, "powersaver_wifi"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 194
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 198
    :cond_d
    const-string v5, "powersaver_switch_2G_call"

    invoke-virtual {p0, v5}, Lcom/android/settings/PowersaverListActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mSwitch2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 199
    iget-object v5, p0, Lcom/android/settings/PowersaverListActivity;->mSwitch2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v5, :cond_3

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/PowersaverListActivity;->mSwitch2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_3
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 13
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 222
    const-string v2, "powersaver_status"

    .line 223
    .local v2, KEY_POWERSAVER_STATUS:Ljava/lang/String;
    const/16 v4, 0x1f41

    .line 224
    .local v4, POWERSAVER_STATUS:I
    const/16 v3, 0x1f40

    .line 225
    .local v3, NORMAL_STATUS:I
    const/16 v1, 0x1f40

    .line 227
    .local v1, DefaultStatus:I
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 228
    .local v6, resolver:Landroid/content/ContentResolver;
    const-string v8, "powersaver_status"

    const/16 v9, 0x1f40

    invoke-static {v6, v8, v9}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 230
    .local v0, CurrentStatus:I
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 231
    .local v7, uiChangeIntent:Landroid/content/Intent;
    const-string v8, "POWERSAVER_UI_STATE_CHANGE"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mBackgrounfDataPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v8, :cond_2

    .line 235
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "powersaver_backgrounddata"

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mBackgrounfDataPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    const-string v9, "powersaver_backgrounddata"

    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mBackgrounfDataPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    invoke-static {v6, v9, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    sget-object v8, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the preference powersaver_backgrounddata is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v11, "powersaver_backgrounddata"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "powersaver_backgrounddata"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v8, "CHANGE_UI_NAME"

    const-string v9, "powersaver_backgrounddata"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v8, "CHANGE_UI_VALUE"

    iget-object v9, p0, Lcom/android/settings/PowersaverListActivity;->mBackgrounfDataPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v8

    return v8

    .line 236
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 244
    :cond_2
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v8, :cond_4

    .line 246
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "powersaver_wifi"

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    sget-object v8, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the preference powersaver_wifi is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v11, "powersaver_wifi"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "powersaver_wifi"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v9, "powersaver_wifi"

    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    invoke-static {v6, v9, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    const-string v8, "CHANGE_UI_NAME"

    const-string v9, "powersaver_wifi"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v8, "CHANGE_UI_VALUE"

    iget-object v9, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 248
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 255
    :cond_4
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mBluetoothPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v8, :cond_6

    .line 257
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "powersaver_bluetooth"

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mBluetoothPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    sget-object v8, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the preference powersaver_bluetooth is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v11, "powersaver_bluetooth"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mBluetoothPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v9, "powersaver_bluetooth"

    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mBluetoothPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    :goto_3
    invoke-static {v6, v9, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    const-string v8, "CHANGE_UI_NAME"

    const-string v9, "powersaver_bluetooth"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v8, "CHANGE_UI_VALUE"

    iget-object v9, p0, Lcom/android/settings/PowersaverListActivity;->mBluetoothPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 259
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 266
    :cond_6
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mScreenBrightnessPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v8, :cond_8

    .line 268
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "powersaver_screen_brightness"

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mScreenBrightnessPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    sget-object v8, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the preference powersaver_screen_brightness is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v11, "powersaver_screen_brightness"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "powersaver_screen_brightness"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v9, "powersaver_screen_brightness"

    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mScreenBrightnessPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    :goto_4
    invoke-static {v6, v9, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    const-string v8, "CHANGE_UI_NAME"

    const-string v9, "powersaver_screen_brightness"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v8, "CHANGE_UI_VALUE"

    iget-object v9, p0, Lcom/android/settings/PowersaverListActivity;->mScreenBrightnessPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 270
    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    .line 277
    :cond_8
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mScreenTimeoutPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v8, :cond_a

    .line 279
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "powersaver_screen_timeout"

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mScreenTimeoutPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 280
    sget-object v8, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the preference powersaver_screen_timeout is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v11, "powersaver_screen_timeout"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "powersaver_screen_timeout"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v9, "powersaver_screen_timeout"

    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mScreenTimeoutPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    :goto_5
    invoke-static {v6, v9, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    const-string v8, "CHANGE_UI_NAME"

    const-string v9, "powersaver_screen_timeout"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v8, "CHANGE_UI_VALUE"

    iget-object v9, p0, Lcom/android/settings/PowersaverListActivity;->mScreenTimeoutPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 281
    :cond_9
    const/4 v8, 0x0

    goto :goto_5

    .line 288
    :cond_a
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mOnscreenAnimationPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v8, :cond_c

    .line 290
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "powersaver_onscreen_animation"

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mOnscreenAnimationPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 291
    sget-object v8, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the preference powersaver_onscreen_animation is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v11, "powersaver_onscreen_animation"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "powersaver_onscreen_animation"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v9, "powersaver_onscreen_animation"

    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mOnscreenAnimationPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    :goto_6
    invoke-static {v6, v9, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    const-string v8, "CHANGE_UI_NAME"

    const-string v9, "powersaver_onscreen_animation"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v8, "CHANGE_UI_VALUE"

    iget-object v9, p0, Lcom/android/settings/PowersaverListActivity;->mOnscreenAnimationPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 292
    :cond_b
    const/4 v8, 0x0

    goto :goto_6

    .line 299
    :cond_c
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mHapticFeedbackPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v8, :cond_e

    .line 301
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "powersaver_haptic_feedback"

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mHapticFeedbackPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 302
    sget-object v8, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the preference powersaver_haptic_feedback is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v11, "powersaver_haptic_feedback"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "powersaver_haptic_feedback"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v9, "powersaver_haptic_feedback"

    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mHapticFeedbackPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v8, 0x1

    :goto_7
    invoke-static {v6, v9, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    sget-object v8, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the preference powersaver_haptic_feedback is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v8, "CHANGE_UI_NAME"

    const-string v9, "powersaver_haptic_feedback"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v8, "CHANGE_UI_VALUE"

    iget-object v9, p0, Lcom/android/settings/PowersaverListActivity;->mHapticFeedbackPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 303
    :cond_d
    const/4 v8, 0x0

    goto :goto_7

    .line 311
    :cond_e
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mDataConnectionPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v8, p2, :cond_10

    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mDataConnectionPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v8, :cond_10

    .line 312
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "powersaver_dataconnection"

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mDataConnectionPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 313
    sget-object v8, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the preference powersaver_dataconnection is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v11, "powersaver_dataconnection"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "powersaver_dataconnection"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v9, "powersaver_dataconnection"

    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mDataConnectionPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    :goto_8
    invoke-static {v6, v9, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    const-string v8, "CHANGE_UI_NAME"

    const-string v9, "powersaver_dataconnection"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v8, "CHANGE_UI_VALUE"

    iget-object v9, p0, Lcom/android/settings/PowersaverListActivity;->mDataConnectionPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 314
    :cond_f
    const/4 v8, 0x0

    goto :goto_8

    .line 321
    :cond_10
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mCDMAPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v8, p2, :cond_12

    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mCDMAPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v8, :cond_12

    .line 322
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "powersaver_CDMAonly"

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mCDMAPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    sget-object v8, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the preference powersaver_CDMAonly is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v11, "powersaver_CDMAonly"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "powersaver_CDMAonly"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v9, "powersaver_CDMAonly"

    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mCDMAPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v8, 0x1

    :goto_9
    invoke-static {v6, v9, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 326
    const-string v8, "CHANGE_UI_NAME"

    const-string v9, "powersaver_CDMAonly"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v8, "CHANGE_UI_VALUE"

    iget-object v9, p0, Lcom/android/settings/PowersaverListActivity;->mCDMAPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 324
    :cond_11
    const/4 v8, 0x0

    goto :goto_9

    .line 330
    :cond_12
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mCPUPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v8, p2, :cond_14

    .line 331
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "powersaver_reduce_CPU"

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mCPUPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    sget-object v8, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the preference powersaver_reduce_CPU is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v11, "powersaver_reduce_CPU"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v9, "powersaver_reduce_CPU"

    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mCPUPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v8, 0x1

    :goto_a
    invoke-static {v6, v9, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    const-string v8, "CHANGE_UI_NAME"

    const-string v9, "powersaver_reduce_CPU"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v8, "CHANGE_UI_VALUE"

    iget-object v9, p0, Lcom/android/settings/PowersaverListActivity;->mCPUPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 333
    :cond_13
    const/4 v8, 0x0

    goto :goto_a

    .line 339
    :cond_14
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mFramePref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v8, p2, :cond_16

    .line 340
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "powersaver_reduce_frame_rate"

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mFramePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    sget-object v8, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the preference powersaver_reduce_frame_rate is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v11, "powersaver_reduce_frame_rate"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "powersaver_reduce_frame_rate"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v9, "powersaver_reduce_frame_rate"

    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mFramePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_15

    const/4 v8, 0x1

    :goto_b
    invoke-static {v6, v9, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 344
    const-string v8, "CHANGE_UI_NAME"

    const-string v9, "powersaver_reduce_frame_rate"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v8, "CHANGE_UI_VALUE"

    iget-object v9, p0, Lcom/android/settings/PowersaverListActivity;->mFramePref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 342
    :cond_15
    const/4 v8, 0x0

    goto :goto_b

    .line 348
    :cond_16
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mSwitch2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne v8, p2, :cond_0

    .line 349
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "powersaver_switch_2G_call"

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mSwitch2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    sget-object v8, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the change preference powersaver_switch_2G_call is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v11, "powersaver_switch_2G_call"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v9, "powersaver_switch_2G_call"

    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mSwitch2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_17

    const/4 v8, 0x1

    :goto_c
    invoke-static {v6, v9, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mSwitch2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v8}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 355
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "KEY_WIFI_SAVE_STATE"

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v11, "powersaver_wifi"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 356
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "powersaver_wifi"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 357
    sget-object v8, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the preference powersaver_wifi is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v11, "powersaver_wifi"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v8, "powersaver_wifi"

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 360
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 369
    :goto_d
    sget-object v8, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    const-string v9, "Send switch call Intent"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 371
    .local v5, it:Landroid/content/Intent;
    const-string v8, "POWERSAVER_SWITCH_TO_2G_CALL"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 374
    const-string v8, "CHANGE_UI_NAME"

    const-string v9, "powersaver_switch_2G_call"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v8, "CHANGE_UI_VALUE"

    iget-object v9, p0, Lcom/android/settings/PowersaverListActivity;->mSwitch2GPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/PowersaverListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 351
    .end local v5           #it:Landroid/content/Intent;
    :cond_17
    const/4 v8, 0x0

    goto/16 :goto_c

    .line 362
    :cond_18
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "powersaver_wifi"

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v11, "KEY_WIFI_SAVE_STATE"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 363
    sget-object v8, Lcom/android/settings/PowersaverListActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the change preference powersaver_wifi is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v11, "powersaver_wifi"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v9, "powersaver_wifi"

    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v10, "powersaver_wifi"

    const/4 v11, 0x1

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_19

    const/4 v8, 0x1

    :goto_e
    invoke-static {v6, v9, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 365
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings/PowersaverListActivity;->mPowerSaverSharedpref:Landroid/content/SharedPreferences;

    const-string v10, "KEY_WIFI_SAVE_STATE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 366
    iget-object v8, p0, Lcom/android/settings/PowersaverListActivity;->mWifiPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_d

    .line 364
    :cond_19
    const/4 v8, 0x0

    goto :goto_e
.end method
