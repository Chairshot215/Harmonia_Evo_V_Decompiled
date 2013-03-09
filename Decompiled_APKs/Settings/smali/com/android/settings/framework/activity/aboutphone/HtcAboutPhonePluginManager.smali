.class Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;
.super Ljava/lang/Object;
.source "HtcAboutPhonePluginManager.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFormattedKernelVersion()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 882
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/version"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x100

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 888
    .local v4, procVersionStr:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 891
    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 903
    .local v0, PROC_VERSION_REGEX:Ljava/lang/String;
    const-string v6, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 904
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 906
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_0

    .line 907
    sget-object v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Regex did not match on /proc/version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const-string v6, "Unavailable"

    .line 923
    .end local v0           #PROC_VERSION_REGEX:Ljava/lang/String;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v4           #procVersionStr:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 888
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 918
    :catch_0
    move-exception v1

    .line 919
    .local v1, e:Ljava/io/IOException;
    sget-object v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->TAG:Ljava/lang/String;

    const-string v7, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 923
    const-string v6, "Unavailable"

    goto :goto_0

    .line 909
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #PROC_VERSION_REGEX:Ljava/lang/String;
    .restart local v2       #m:Ljava/util/regex/Matcher;
    .restart local v3       #p:Ljava/util/regex/Pattern;
    .restart local v4       #procVersionStr:Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    if-ge v6, v8, :cond_1

    .line 910
    sget-object v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Regex match on /proc/version only returned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " groups"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const-string v6, "Unavailable"

    goto :goto_0

    .line 914
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    goto :goto_0
.end method

.method public static pluginBasebandVersion(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 845
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 848
    .local v1, p:Lcom/htc/preference/HtcPreference;
    const-string v2, "gsm.version.baseband"

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c075e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, basebandVersion:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 853
    const v2, 0x7f0c09f2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 854
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 855
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 856
    return-object v1
.end method

.method public static pluginBatteryProgress(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;
    .locals 3
    .parameter "fragment"
    .parameter "parent"

    .prologue
    .line 499
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 502
    .local v0, p:Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 503
    const v1, 0x7f0c0a33

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->setTitle(I)V

    .line 504
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/aboutphone/battery/HtcBatteryProgressPreference;->setSelectable(Z)V

    .line 505
    return-object v0
.end method

.method public static pluginBatteryUse(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 4
    .parameter "fragment"
    .parameter "parent"

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 521
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 522
    const v2, 0x7f0c0bbb

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 523
    const v2, 0x7f0c0bbc

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 525
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 526
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 527
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 528
    return-object v1
.end method

.method public static pluginBluetoothAddress(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 764
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 767
    .local v1, p:Lcom/htc/preference/HtcPreference;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 770
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 771
    const v2, 0x7f0c0a0b

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 772
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 773
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 777
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 778
    return-object v1

    .line 775
    :cond_0
    const v2, 0x7f0c0a0d

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public static pluginBluetoothInfo(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 713
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 716
    .local v0, p:Lcom/htc/preference/HtcPreference;
    const-string v2, "ro.product.bluetooth"

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c075e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, processor:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 721
    const v2, 0x7f0c0142

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 722
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 723
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 724
    return-object v0
.end method

.method public static pluginBrowserVersion(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 9
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 1435
    new-instance v2, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x7f0d0012

    invoke-direct {v2, v6, v7, v8}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1438
    .local v2, p:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1439
    const v6, 0x7f0c03bd

    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1443
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104031b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1445
    .local v4, uastring:Ljava/lang/String;
    const-string v6, "AppleWebKit/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1446
    .local v0, idx:I
    if-ltz v0, :cond_3

    .line 1448
    add-int/lit8 v0, v0, 0xc

    .line 1449
    const/4 v1, -0x1

    .line 1450
    .local v1, idx2:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 1452
    const/16 v6, 0x20

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1454
    :cond_0
    if-gez v1, :cond_1

    move v1, v0

    .line 1455
    :cond_1
    add-int/lit8 v6, v0, -0x7

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1458
    .local v5, version:Ljava/lang/CharSequence;
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd8

    if-ne v6, v7, :cond_2

    .line 1460
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Android"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1461
    .local v3, temp:Ljava/lang/String;
    move-object v5, v3

    .line 1464
    .end local v3           #temp:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1467
    .end local v1           #idx2:I
    .end local v5           #version:Ljava/lang/CharSequence;
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1469
    return-object v2
.end method

.method public static pluginBuildNumber(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 936
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 939
    .local v1, p:Lcom/htc/preference/HtcPreference;
    const-string v2, "ro.build.description"

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c075e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 943
    .local v0, buildNumber:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 944
    const v2, 0x7f0c09f4

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 945
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 946
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 947
    return-object v1
.end method

.method public static pluginCdmaEriVersion(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;)Lcom/htc/preference/HtcPreference;
    .locals 4
    .parameter "proxy"
    .parameter "parent"
    .parameter "result"

    .prologue
    .line 1364
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d0012

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1367
    .local v0, p:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1368
    const v1, 0x7f0c03bc

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1369
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1370
    const v1, 0x7f0c09f5

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1374
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1376
    return-object v0

    .line 1372
    :cond_0
    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static pluginCdmaMIN(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Lcom/android/internal/telephony/Phone;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"
    .parameter "mPhone"

    .prologue
    .line 1532
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1535
    .local v0, p:Lcom/htc/preference/HtcPreference;
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v1

    .line 1537
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1538
    const v2, 0x7f0c09ff

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1539
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1540
    const v2, 0x7f0c09f5

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1545
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1547
    return-object v0

    .line 1542
    :cond_0
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static pluginCdmaNAI(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;)Lcom/htc/preference/HtcPreference;
    .locals 4
    .parameter "fragment"
    .parameter "parent"
    .parameter "result"

    .prologue
    .line 1410
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d0012

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1413
    .local v0, p:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1414
    const v1, 0x7f0c04e0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1415
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1416
    const v1, 0x7f0c09f5

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1420
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1422
    return-object v0

    .line 1418
    :cond_0
    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static pluginCdmaNAI(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;)Lcom/htc/preference/HtcPreference;
    .locals 4
    .parameter "proxy"
    .parameter "parent"
    .parameter "result"

    .prologue
    .line 1390
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d0012

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1393
    .local v0, p:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1394
    const v1, 0x7f0c04e0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1395
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1396
    const v1, 0x7f0c09f5

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1400
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1402
    return-object v0

    .line 1398
    :cond_0
    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static pluginCdmaPriVersion(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Lcom/android/internal/telephony/Phone;)Lcom/htc/preference/HtcPreference;
    .locals 7
    .parameter "proxy"
    .parameter "parent"
    .parameter "mPhone"

    .prologue
    .line 1318
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f0d0012

    invoke-direct {v1, v4, v5, v6}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1321
    .local v1, p:Lcom/htc/preference/HtcPreference;
    const/4 v3, 0x0

    .line 1322
    .local v3, result:Ljava/lang/String;
    invoke-interface {p2}, Lcom/android/internal/telephony/HtcIfPhone;->getPRIVersions()[Ljava/lang/String;

    move-result-object v2

    .line 1323
    .local v2, pris:[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1324
    invoke-interface {p2}, Lcom/android/internal/telephony/HtcIfPhone;->getPRIVersion()Ljava/lang/String;

    move-result-object v3

    .line 1342
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1343
    const v4, 0x7f0c03bb

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1344
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1345
    const v4, 0x7f0c09f5

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1349
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1351
    return-object v1

    .line 1327
    :cond_1
    const/4 v0, 0x0

    .line 1328
    .local v0, i:I
    :goto_2
    array-length v4, v2

    if-ge v0, v4, :cond_3

    aget-object v4, v2, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1329
    if-nez v0, :cond_2

    .line 1330
    aget-object v3, v2, v0

    .line 1335
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1333
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1337
    :cond_3
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 1338
    const/4 v3, 0x0

    goto :goto_0

    .line 1347
    .end local v0           #i:I
    :cond_4
    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public static pluginCdmaPrlVersion(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Lcom/android/internal/telephony/Phone;)Lcom/htc/preference/HtcPreference;
    .locals 6
    .parameter "proxy"
    .parameter "parent"
    .parameter "mPhone"

    .prologue
    .line 1284
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0d0012

    invoke-direct {v1, v3, v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1287
    .local v1, p:Lcom/htc/preference/HtcPreference;
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v2

    .line 1289
    .local v2, result:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1290
    const v3, 0x7f0c0a01

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1291
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1292
    const v3, 0x7f0c09f5

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1304
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1305
    return-object v1

    .line 1294
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1295
    .local v0, len:I
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-ne v3, v4, :cond_1

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    .line 1297
    add-int/lit8 v3, v0, -0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1301
    :cond_1
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static pluginDataAccess(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 1214
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1216
    .local v0, p:Lcom/htc/preference/HtcPreference;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1220
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1221
    const v2, 0x7f0c04b3

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1222
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1223
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1224
    return-object v0
.end method

.method public static pluginDeviceSerialNumber(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 375
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 378
    .local v1, p:Lcom/htc/preference/HtcPreference;
    const-string v2, "ro.serialno"

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c075e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, deviceSN:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 383
    const v2, 0x7f0c04b0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 384
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 385
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 386
    return-object v1
.end method

.method public static pluginDisplayInfo(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 621
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 624
    .local v0, p:Lcom/htc/preference/HtcPreference;
    const-string v2, "ro.product.display_resolution"

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c075e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, processor:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 629
    const v2, 0x7f0c013f

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 630
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 631
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 632
    return-object v0
.end method

.method public static pluginDistributionTime(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 11
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 1017
    new-instance v4, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const v10, 0x7f0d0012

    invoke-direct {v4, v8, v9, v10}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1024
    .local v4, p:Lcom/htc/preference/HtcPreference;
    const-string v8, "ro.build.date.utc"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1028
    .local v5, ro_build_date_utc:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1029
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1041
    .local v0, buildDate:Ljava/util/Date;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "date_format"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1047
    .local v1, currentFormat:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1048
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0183

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1052
    :cond_0
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1055
    .local v2, distributionTime:Ljava/lang/String;
    const v8, 0x7f0c0139

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1056
    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1057
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1058
    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1059
    return-object v4

    .line 1032
    .end local v0           #buildDate:Ljava/util/Date;
    .end local v1           #currentFormat:Ljava/lang/String;
    .end local v2           #distributionTime:Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1033
    .local v6, timeValue:J
    new-instance v0, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v6

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #buildDate:Ljava/util/Date;
    goto :goto_0

    .line 1034
    .end local v0           #buildDate:Ljava/util/Date;
    .end local v6           #timeValue:J
    :catch_0
    move-exception v3

    .line 1035
    .local v3, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1036
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .restart local v0       #buildDate:Ljava/util/Date;
    goto :goto_0
.end method

.method public static pluginFirmwareVersion(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 823
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 826
    .local v1, p:Lcom/htc/preference/HtcPreference;
    const-string v2, "ro.build.version.release"

    const-string v3, "1.6"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, firmwareVersion:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 830
    const v2, 0x7f0c09f0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 831
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 832
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 833
    return-object v1
.end method

.method public static pluginFrontCameraInfo(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 667
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 670
    .local v0, p:Lcom/htc/preference/HtcPreference;
    const-string v2, "ro.product.front_camera"

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c075e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, processor:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 675
    const v2, 0x7f0c0141

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 676
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 677
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 678
    return-object v0
.end method

.method public static pluginHardwareVersion(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 8
    .parameter "proxy"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 541
    new-instance v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f0d0012

    invoke-direct {v3, v4, v5, v6}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 544
    .local v3, p:Lcom/htc/preference/HtcPreference;
    const-string v4, "ro.revision"

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c075e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, hardwareversion:Ljava/lang/String;
    const/4 v2, 0x0

    .line 550
    .local v2, iGetinNumber:I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 555
    :goto_0
    const-string v4, "%1$04d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-virtual {p1, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 558
    const v4, 0x7f0c03bf

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 559
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 560
    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 562
    return-object v3

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Integer.parseInt(hardwareversion) error.hardware version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static pluginHtcSenseVersion(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 8
    .parameter "proxy"
    .parameter "parent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1070
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0d0012

    invoke-direct {v0, v3, v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1073
    .local v0, p:Lcom/htc/preference/HtcPreference;
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersionInString()Ljava/lang/String;

    move-result-object v2

    .line 1076
    .local v2, senseVersion:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->isTabletDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1077
    const v1, 0x7f0c013b

    .line 1078
    .local v1, resId:I
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1084
    .end local v1           #resId:I
    :cond_0
    :goto_0
    const v3, 0x7f0c013a

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1085
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1086
    invoke-virtual {v0, v6}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1087
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1088
    return-object v0

    .line 1079
    :cond_1
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isC0001:Z

    if-eqz v3, :cond_0

    .line 1080
    const v1, 0x7f0c013c

    .line 1081
    .restart local v1       #resId:I
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static pluginIMEI(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 6
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 195
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0d0012

    invoke-direct {v1, v3, v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 197
    .local v1, p:Lcom/htc/preference/HtcPreference;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 199
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, IMEI:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 202
    const v3, 0x7f0c09fc

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 209
    return-object v1

    .line 206
    :cond_0
    const v3, 0x7f0c075e

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public static pluginIMEI_OF_WORLDPHONE(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;Lcom/android/internal/telephony/Phone;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "fragment"
    .parameter "parent"
    .parameter "mPhone"

    .prologue
    .line 244
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 247
    .local v1, p:Lcom/htc/preference/HtcPreference;
    invoke-interface {p2}, Lcom/android/internal/telephony/HtcIfPhone;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, IMEI:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 250
    const v2, 0x7f0c09fc

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 256
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 258
    return-object v1

    .line 254
    :cond_0
    const v2, 0x7f0c075e

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public static pluginIMEI_OF_WORLDPHONE(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Lcom/android/internal/telephony/Phone;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"
    .parameter "mPhone"

    .prologue
    .line 223
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 226
    .local v1, p:Lcom/htc/preference/HtcPreference;
    invoke-interface {p2}, Lcom/android/internal/telephony/HtcIfPhone;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, IMEI:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 229
    const v2, 0x7f0c09fc

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 237
    return-object v1

    .line 233
    :cond_0
    const v2, 0x7f0c075e

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public static pluginIMEI_SV(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 6
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 273
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0d0012

    invoke-direct {v1, v3, v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 275
    .local v1, p:Lcom/htc/preference/HtcPreference;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 277
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, IMEI_SV:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 280
    const v3, 0x7f0c09fd

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 287
    return-object v1

    .line 284
    :cond_0
    const v3, 0x7f0c075e

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public static pluginIMEI_SV_OF_WORLDPHONE(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;Lcom/android/internal/telephony/Phone;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "fragment"
    .parameter "parent"
    .parameter "mPhone"

    .prologue
    .line 322
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 325
    .local v1, p:Lcom/htc/preference/HtcPreference;
    invoke-interface {p2}, Lcom/android/internal/telephony/HtcIfPhone;->getImeiSv()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, IMEI_SV:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 328
    const v2, 0x7f0c09fd

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 334
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 336
    return-object v1

    .line 332
    :cond_0
    const v2, 0x7f0c075e

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public static pluginIMEI_SV_OF_WORLDPHONE(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Lcom/android/internal/telephony/Phone;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"
    .parameter "mPhone"

    .prologue
    .line 301
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 304
    .local v1, p:Lcom/htc/preference/HtcPreference;
    invoke-interface {p2}, Lcom/android/internal/telephony/HtcIfPhone;->getImeiSv()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, IMEI_SV:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 307
    const v2, 0x7f0c09fd

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 308
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 313
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 315
    return-object v1

    .line 311
    :cond_0
    const v2, 0x7f0c075e

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public static pluginIMSI(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 6
    .parameter "fragment"
    .parameter "parent"

    .prologue
    .line 1256
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0d0012

    invoke-direct {v1, v3, v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1258
    .local v1, p:Lcom/htc/preference/HtcPreference;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1260
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1262
    .local v0, IMSI:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1263
    const v3, 0x7f0c04a9

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1265
    const v3, 0x7f0c0a0d

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1269
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1270
    return-object v1

    .line 1267
    :cond_0
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static pluginIMSI(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 6
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 1236
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0d0012

    invoke-direct {v1, v3, v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1238
    .local v1, p:Lcom/htc/preference/HtcPreference;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1240
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, IMSI:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1243
    const v3, 0x7f0c04a9

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1245
    const v3, 0x7f0c0a0d

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1249
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1250
    return-object v1

    .line 1247
    :cond_0
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static pluginKernelVersion(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 4
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 868
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d0012

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 871
    .local v0, p:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 872
    const v1, 0x7f0c09f3

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 873
    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 874
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 875
    return-object v0
.end method

.method public static pluginMEID(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;Lcom/android/internal/telephony/Phone;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "fragment"
    .parameter "parent"
    .parameter "mPhone"

    .prologue
    .line 1504
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1507
    .local v0, p:Lcom/htc/preference/HtcPreference;
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v1

    .line 1509
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1510
    const v2, 0x7f0c0a02

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1511
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1512
    const v2, 0x7f0c09f5

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1517
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1519
    return-object v0

    .line 1514
    :cond_0
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static pluginMEID(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Lcom/android/internal/telephony/Phone;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"
    .parameter "mPhone"

    .prologue
    .line 1482
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1485
    .local v0, p:Lcom/htc/preference/HtcPreference;
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v1

    .line 1487
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1488
    const v2, 0x7f0c0a02

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1489
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1490
    const v2, 0x7f0c09f5

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1495
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1497
    return-object v0

    .line 1492
    :cond_0
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static pluginMainCameraInfo(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 644
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 647
    .local v0, p:Lcom/htc/preference/HtcPreference;
    const-string v2, "ro.product.main_camera"

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c075e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, processor:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 652
    const v2, 0x7f0c0140

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 653
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 654
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 655
    return-object v0
.end method

.method public static pluginMemoryInfo(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 598
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 601
    .local v0, p:Lcom/htc/preference/HtcPreference;
    const-string v2, "ro.product.ram"

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c075e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, processor:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 606
    const v2, 0x7f0c013e

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 607
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 608
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 609
    return-object v0
.end method

.method public static pluginModelNumber(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 125
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    .local v1, p:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/storage/customize/HtcCustomizedDeviceName;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, deviceName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 131
    const v2, 0x7f0c09f1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 132
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 134
    return-object v1
.end method

.method public static pluginNetworkType(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "fragment"
    .parameter "parent"

    .prologue
    .line 1148
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1150
    .local v1, p:Lcom/htc/preference/HtcPreference;
    const-string v2, "gsm.network.type"

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c075e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, networkType:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1155
    const v2, 0x7f0c0a04

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1156
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1157
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1158
    return-object v1
.end method

.method public static pluginOperatorName(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 6
    .parameter "fragment"
    .parameter "parent"

    .prologue
    .line 1100
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0d0012

    invoke-direct {v1, v3, v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1102
    .local v1, p:Lcom/htc/preference/HtcPreference;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1104
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, operatorName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1107
    const v3, 0x7f0c04b2

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1109
    const v3, 0x7f0c075e

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1113
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1114
    return-object v1

    .line 1111
    :cond_0
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static pluginPhoneNumber(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 9
    .parameter "fragment"
    .parameter "parent"

    .prologue
    .line 434
    new-instance v2, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x7f0d0012

    invoke-direct {v2, v6, v7, v8}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 436
    .local v2, p:Lcom/htc/preference/HtcPreference;
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 438
    .local v5, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, phoneNumber:Ljava/lang/String;
    const/4 v3, 0x0

    .line 442
    .local v3, phoneName:Ljava/lang/String;
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcProjectFlags;->isT0013:Z

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0009:Z

    if-eqz v6, :cond_1

    .line 443
    :cond_0
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v3

    .line 447
    :cond_1
    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 450
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0003:Z

    if-eqz v6, :cond_5

    .line 451
    const v6, 0x7f0c04b6

    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 457
    :goto_0
    const/4 v1, 0x0

    .line 458
    .local v1, formattedNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 459
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 471
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcProjectFlags;->isT0013:Z

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0009:Z

    if-eqz v6, :cond_6

    .line 472
    :cond_3
    move-object v0, v4

    .line 473
    .local v0, combine:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 474
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    :cond_4
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 486
    .end local v0           #combine:Ljava/lang/String;
    :goto_1
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 487
    return-object v2

    .line 453
    .end local v1           #formattedNumber:Ljava/lang/String;
    :cond_5
    const v6, 0x7f0c04b1

    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto :goto_0

    .line 478
    .restart local v1       #formattedNumber:Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 482
    :cond_7
    const v6, 0x7f0c075e

    invoke-virtual {v2, v6}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1
.end method

.method public static pluginPhoneNumber(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 7
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 398
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f0d0012

    invoke-direct {v1, v4, v5, v6}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 400
    .local v1, p:Lcom/htc/preference/HtcPreference;
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 402
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, phoneNumber:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 407
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0003:Z

    if-eqz v4, :cond_1

    .line 409
    const v4, 0x7f0c04b6

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 417
    :goto_0
    const/4 v0, 0x0

    .line 418
    .local v0, formattedNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 419
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 423
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 427
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 428
    return-object v1

    .line 413
    .end local v0           #formattedNumber:Ljava/lang/String;
    :cond_1
    const v4, 0x7f0c04b1

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto :goto_0

    .line 425
    .restart local v0       #formattedNumber:Ljava/lang/String;
    :cond_2
    const v4, 0x7f0c075e

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1
.end method

.method public static pluginProcessorInfo(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 575
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 578
    .local v0, p:Lcom/htc/preference/HtcPreference;
    const-string v2, "ro.product.processor"

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c075e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, processor:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 583
    const v2, 0x7f0c013d

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 584
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 585
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 586
    return-object v0
.end method

.method public static pluginROMVersion(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 8
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 959
    new-instance v4, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x7f0d0012

    invoke-direct {v4, v5, v6, v7}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 966
    .local v4, p:Lcom/htc/preference/HtcPreference;
    const-string v5, "ro.build.description"

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c075e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 969
    .local v1, buildNumber:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 970
    .local v0, ROMVersion:Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 971
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 972
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 973
    .local v2, ch:C
    const/16 v5, 0x2e

    if-eq v2, v5, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 974
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 971
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 980
    .end local v2           #ch:C
    :cond_1
    invoke-virtual {p1, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 981
    const v5, 0x7f0c0138

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 982
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 983
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 984
    return-object v4
.end method

.method public static pluginRoaming(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 1189
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1191
    .local v0, p:Lcom/htc/preference/HtcPreference;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1194
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1195
    const v2, 0x7f0c0a08

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1196
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1197
    const v2, 0x7f0c0773

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1201
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1202
    return-object v0

    .line 1199
    :cond_0
    const v2, 0x7f0c0774

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public static pluginServiceState(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;
    .locals 4
    .parameter "fragment"
    .parameter "parent"

    .prologue
    .line 1170
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d0012

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1174
    .local v0, p:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1175
    const v1, 0x7f0c0a06

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->setTitle(I)V

    .line 1176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->setSelectable(Z)V

    .line 1177
    return-object v0
.end method

.method public static pluginSignalStrength(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;
    .locals 4
    .parameter "fragment"
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 1126
    sget-boolean v2, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportStatusForSignalStrength:Z

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1136
    :goto_0
    return-object v0

    .line 1129
    :cond_0
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0012

    invoke-direct {v0, v2, v1, v3}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1133
    .local v0, p:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1134
    const v1, 0x7f0c0a07

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->setTitle(I)V

    .line 1135
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreference;->setSelectable(Z)V

    goto :goto_0
.end method

.method public static pluginSimCardId(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 9
    .parameter "fragment"
    .parameter "parent"

    .prologue
    const v8, 0x7f0c075e

    .line 148
    new-instance v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x7f0d0012

    invoke-direct {v3, v5, v6, v7}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    .local v3, p:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p1, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gsm.htc.sim.types.group"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, mIccCardType:I
    sget-object v5, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==>>mIccCardType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    :cond_0
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd8

    if-ne v5, v6, :cond_2

    .line 157
    sget-object v5, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_UIM_ID:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, mUimId:Ljava/lang/String;
    const v5, 0x7f0c04fe

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 159
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 160
    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    .end local v2           #mUimId:Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 180
    return-object v3

    .line 162
    .restart local v2       #mUimId:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v8}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0

    .line 168
    .end local v2           #mUimId:Ljava/lang/String;
    :cond_2
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 170
    .local v4, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, mSimId:Ljava/lang/String;
    const v5, 0x7f0c04fd

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 172
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 173
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 175
    :cond_3
    invoke-virtual {v3, v8}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public static pluginSimCardId(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Lcom/android/internal/telephony/Phone;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"
    .parameter "mPhone"

    .prologue
    .line 1553
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1554
    .local v1, p:Lcom/htc/preference/HtcPreference;
    const/4 v0, 0x0

    .line 1555
    .local v0, mSimId:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1557
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v2, v3, :cond_0

    .line 1559
    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_UIM_ID:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1560
    sget-object v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDMA.UIMID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const v2, 0x7f0c04fe

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1569
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1571
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1575
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1576
    return-object v1

    .line 1565
    :cond_0
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 1566
    const v2, 0x7f0c04fd

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto :goto_0

    .line 1573
    :cond_1
    const v2, 0x7f0c075e

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1
.end method

.method public static pluginSimSerialNumber(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 6
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 349
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0d0012

    invoke-direct {v0, v3, v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 351
    .local v0, p:Lcom/htc/preference/HtcPreference;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 353
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, serialNumber:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 356
    const v3, 0x7f0c04ae

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 357
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 358
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 363
    return-object v0

    .line 360
    :cond_0
    const v3, 0x7f0c075e

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public static pluginSoftwareNumber(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 996
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 999
    .local v0, p:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/storage/customize/HtcCustomizedSoftwareNumber;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1001
    .local v1, softwareNumber:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1002
    const v2, 0x7f0c04b4

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1003
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1004
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 1005
    return-object v0
.end method

.method public static pluginWiFiMACAddress(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 6
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 736
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0d0012

    invoke-direct {v0, v3, v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 739
    .local v0, p:Lcom/htc/preference/HtcPreference;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 741
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 743
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 744
    const v3, 0x7f0c0a0a

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 745
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 747
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 751
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 752
    return-object v0

    .line 749
    :cond_0
    const v3, 0x7f0c0a0d

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public static pluginWifiInfo(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 690
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 693
    .local v0, p:Lcom/htc/preference/HtcPreference;
    const-string v2, "ro.product.wifi"

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c075e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, processor:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 698
    const v2, 0x7f0c0143

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 699
    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 700
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 701
    return-object v0
.end method

.method public static pluginWimaxMACAddress(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "proxy"
    .parameter "parent"

    .prologue
    .line 790
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d0012

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 793
    .local v1, p:Lcom/htc/preference/HtcPreference;
    const-string v2, "wimax"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/WimaxController;

    .line 795
    .local v0, mWimaxController:Lcom/htc/net/wimax/WimaxController;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 796
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x51

    if-ne v2, v3, :cond_0

    .line 797
    const v2, 0x7f0c045e

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 804
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 805
    const-string v2, "persist.wimax.0.MAC"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 809
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 810
    return-object v1

    .line 798
    :cond_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x50

    if-ne v2, v3, :cond_1

    .line 799
    const v2, 0x7f0c045f

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto :goto_0

    .line 801
    :cond_1
    const v2, 0x7f0c045d

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto :goto_0

    .line 807
    :cond_2
    const v2, 0x7f0c0a0d

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1
.end method
