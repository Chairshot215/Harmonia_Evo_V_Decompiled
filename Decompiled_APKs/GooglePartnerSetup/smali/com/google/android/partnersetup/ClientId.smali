.class public final Lcom/google/android/partnersetup/ClientId;
.super Ljava/lang/Object;
.source "ClientId.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatClientId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "base"

    .prologue
    .line 167
    const-string v4, "{country}"

    const-string v5, "gsm.sim.operator.iso-country"

    const-string v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 171
    const-string v4, "{device}"

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 174
    const-string v4, "{manufacturer}"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 177
    const-string v4, "{model}"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 180
    const-string v0, "-"

    .line 183
    .local v0, delimeter:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, tmp:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 185
    aget-object v4, v3, v1

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v3, v1

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    aget-object v4, v3, v1

    const-string v5, "{"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, sysvar:Ljava/lang/String;
    const-string v4, "}"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 188
    aget-object v4, v3, v1

    const-string v5, "unknown"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 184
    .end local v2           #sysvar:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_1
    return-object p0
.end method

.method public static getClientIdData(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "client_id set to: %s\nsearch client id: %s\nmaps client id: %s\nyoutube client id: %s\nmarket client id: %s\nvoicesearch client id: %s\nshopper client id: %s\nwallet client id: %s"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "client_id"

    invoke-static {v0, v4}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "search_client_id"

    invoke-static {v0, v4}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "maps_client_id"

    invoke-static {v0, v4}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "youtube_client_id"

    invoke-static {v0, v4}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "market_client_id"

    invoke-static {v0, v4}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "voicesearch_client_id"

    invoke-static {v0, v4}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "shopper_client_id"

    invoke-static {v0, v4}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "wallet_client_id"

    invoke-static {v0, v4}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static printClientIdData(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 160
    const-string v0, "GooglePartnerSetup"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "GooglePartnerSetup"

    invoke-static {p0}, Lcom/google/android/partnersetup/ClientId;->getClientIdData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    return-void
.end method

.method public static setClientId(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/4 v14, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v13, 0x3

    .line 26
    const-string v10, "GooglePartnerSetup"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 27
    const-string v10, "GooglePartnerSetup"

    const-string v11, "Running client id setup"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    const-string v0, "unknown"

    .line 33
    .local v0, baseClientId:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "clientid_base"

    invoke-static {v10, v11}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_9

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "data_store_version"

    const-string v12, "GSERVICES"

    invoke-static {v10, v11, v12}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    :goto_0
    invoke-static {v0}, Lcom/google/android/partnersetup/ClientId;->formatClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "client_id"

    const-string v12, "ro.com.google.clientidbase.ms"

    invoke-static {v12, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/partnersetup/ClientId;->formatClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 65
    .local v1, config:Landroid/content/res/Configuration;
    iget v10, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v10, 0xf

    .line 66
    .local v6, screenSize:I
    if-eq v6, v13, :cond_1

    const/4 v10, 0x4

    if-ne v6, v10, :cond_b

    :cond_1
    move v3, v9

    .line 68
    .local v3, hasLargeScreen:Z
    :goto_1
    iget v10, v1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v10, v14, :cond_2

    iget v10, v1, Landroid/content/res/Configuration;->touchscreen:I

    if-ne v10, v13, :cond_c

    :cond_2
    move v4, v9

    .line 71
    .local v4, hasTouchscreen:Z
    :goto_2
    if-eqz v3, :cond_d

    if-eqz v4, :cond_d

    const-string v7, "tablet-"

    .line 73
    .local v7, searchPrefix:Ljava/lang/String;
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "search_client_id"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ro.com.google.clientidbase.ms"

    invoke-static {v11, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/partnersetup/ClientId;->formatClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 82
    .local v5, pm:Landroid/content/pm/PackageManager;
    const-string v8, "com.google.android.apps.maps"

    invoke-static {v5, v8}, Lcom/google/android/partnersetup/GooglePartnerSetup;->isPackageInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "maps_client_id"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "gmm-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ro.com.google.clientidbase.gmm"

    invoke-static {v11, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/partnersetup/ClientId;->formatClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    :cond_3
    const-string v8, "com.google.android.youtube"

    invoke-static {v5, v8}, Lcom/google/android/partnersetup/GooglePartnerSetup;->isPackageInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "youtube_client_id"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mvapp-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ro.com.google.clientidbase.yt"

    invoke-static {v11, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/partnersetup/ClientId;->formatClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 100
    :cond_4
    const-string v8, "com.android.vending"

    invoke-static {v5, v8}, Lcom/google/android/partnersetup/GooglePartnerSetup;->isPackageInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "market_client_id"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "am-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ro.com.google.clientidbase.am"

    invoke-static {v11, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/partnersetup/ClientId;->formatClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    :cond_5
    const-string v8, "com.google.android.voicesearch"

    invoke-static {v5, v8}, Lcom/google/android/partnersetup/GooglePartnerSetup;->isPackageInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 111
    const-string v8, "ro.com.google.clientidbase.ms"

    invoke-static {v8, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, fallbackVSClientId:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicesearch_client_id"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ro.com.google.clientidbase.vs"

    invoke-static {v11, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/partnersetup/ClientId;->formatClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    .end local v2           #fallbackVSClientId:Ljava/lang/String;
    :cond_6
    const-string v8, "com.google.android.apps.shopper"

    invoke-static {v5, v8}, Lcom/google/android/partnersetup/GooglePartnerSetup;->isPackageInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "shopper_client_id"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "shopper-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ro.com.google.clientidbase.sh"

    invoke-static {v11, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/partnersetup/ClientId;->formatClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    :cond_7
    const-string v8, "com.google.android.apps.walletnfcrel"

    invoke-static {v5, v8}, Lcom/google/android/partnersetup/GooglePartnerSetup;->isPackageInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wallet_client_id"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wallet-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ro.com.google.clientidbase.wal"

    invoke-static {v11, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/partnersetup/ClientId;->formatClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 137
    :cond_8
    return-void

    .line 42
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v3           #hasLargeScreen:Z
    .end local v4           #hasTouchscreen:Z
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #screenSize:I
    .end local v7           #searchPrefix:Ljava/lang/String;
    :cond_9
    const-string v10, "GooglePartnerSetup"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 43
    const-string v10, "GooglePartnerSetup"

    const-string v11, "Setting client id base from system property ro.com.google.clientidbase"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_a
    const-string v10, "ro.com.google.clientidbase"

    const-string v11, "unknown"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "data_store_version"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .restart local v1       #config:Landroid/content/res/Configuration;
    .restart local v6       #screenSize:I
    :cond_b
    move v3, v8

    .line 66
    goto/16 :goto_1

    .restart local v3       #hasLargeScreen:Z
    :cond_c
    move v4, v8

    .line 68
    goto/16 :goto_2

    .line 71
    .restart local v4       #hasTouchscreen:Z
    :cond_d
    const-string v7, "ms-"

    goto/16 :goto_3
.end method
