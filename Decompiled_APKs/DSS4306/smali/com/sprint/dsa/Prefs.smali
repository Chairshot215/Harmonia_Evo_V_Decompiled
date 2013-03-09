.class public Lcom/sprint/dsa/Prefs;
.super Ljava/lang/Object;
.source "Prefs.java"


# static fields
.field public static final DSA_SLOT1_URL:Ljava/lang/String; = "https://deviceselfservice.sprint.com/dsa/"

.field public static final DSS_URL_HOSTNAME:Ljava/lang/String; = "deviceselfservice.sprint.com"

.field public static final MARKET_PATH:Ljava/lang/String; = "market://details?id=com.sprint.zone"

.field private static final PREF_BASE_URL:Ljava/lang/String; = "baseUrl"

.field private static final PREF_DB_INIT:Ljava/lang/String; = "dbLoaded"

.field private static final PREF_DEBUG:Ljava/lang/String; = "debug"

.field public static final PREF_DEBUG_DEFAULT:Z = false

.field private static final PREF_FIRST_LAUNCH:Ljava/lang/String; = "firstLaunch"

.field private static final PREF_FIRST_LAUNCH_DEFAULT:Z = true

.field private static final PREF_LAUNCH_VER:Ljava/lang/String; = "launchVersion"

.field private static final PREF_POLL_INTERVAL:Ljava/lang/String; = "pollInterval"

.field public static final PREF_POLL_INTERVAL_DEFAULT:J = 0x5265c00L

.field public static final PREF_UPGRADE_AVAILABLE:Ljava/lang/String; = "upgradeAvailable"

.field private static final PREF_UPGRADE_OPT:Ljava/lang/String; = "upgradeOpt"

.field private static final PREF_UPGRADE_OPT_DEFAULT:Z = false

.field private static final PREF_UPGRADE_PATH:Ljava/lang/String; = "upgradeUrl"

.field private static final PREF_UPGRADE_VER:Ljava/lang/String; = "appver"

.field public static final PREF_UPGRADE_VERSION:Ljava/lang/String; = "upgradeVersion"

.field private static final PREF_UPGRADE_VER_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DSS_Prefs"


# instance fields
.field private final PREFS_ID:Ljava/lang/String;

.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "pref"

    iput-object v0, p0, Lcom/sprint/dsa/Prefs;->PREFS_ID:Ljava/lang/String;

    .line 89
    const-string v0, "pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    .line 90
    return-void
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 63
    const/4 v3, 0x0

    .line 66
    .local v3, ver:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 67
    .local v2, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 68
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    .end local v2           #manager:Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DSS_Prefs"

    const-string v5, "Exception - Couldn\'t find package information in PackageManager"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getVersionString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 76
    const-string v3, "0"

    .line 79
    .local v3, ver:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 80
    .local v2, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 81
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    .end local v2           #manager:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DSS_Prefs"

    const-string v5, "Exception - Couldn\'t find package information in PackageManager"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getLaunchVersion()I
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "launchVersion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNai(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 98
    sget-boolean v3, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v3, :cond_0

    sget-object v1, Lcom/sprint/dsa/Util;->nai:Ljava/lang/String;

    .line 110
    :goto_0
    return-object v1

    .line 99
    :cond_0
    const-string v1, ""

    .line 103
    .local v1, result:Ljava/lang/String;
    :try_start_0
    new-instance v2, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v2, p1}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    .line 104
    .local v2, sp:Lcom/sprint/internal/SystemProperties;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 107
    .end local v2           #sp:Lcom/sprint/internal/SystemProperties;
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DSS_Prefs"

    const-string v4, "Exception - Failed to retrieve the NAI"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPollInterval()J
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "pollInterval"

    const-wide/32 v2, 0x5265c00

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShared()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getUpgradeAvailable()Z
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "upgradeAvailable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUpgradeAvailableVersion()I
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "upgradeVersion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUpgradePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 231
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "upgradeUrl"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, upgrade:Ljava/lang/String;
    return-object v0
.end method

.method public getUpgradeVersion()J
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "appver"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isDbInitialized()Z
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "dbLoaded"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDebug()Z
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "debug"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstLaunch()Z
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "firstLaunch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUpgradeOptional()Z
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "upgradeOpt"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "baseUrl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    return-void
.end method

.method public setDbInit(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "dbLoaded"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    return-void
.end method

.method public setDebug(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "debug"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    return-void
.end method

.method public setFirstLaunch(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "firstLaunch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    return-void
.end method

.method public setLaunchVersion(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 205
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 206
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "launchVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    return-void
.end method

.method public setPollInterval(J)V
    .locals 2
    .parameter "value"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pollInterval"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    return-void
.end method

.method public setUpgradeAvailable(ZI)V
    .locals 2
    .parameter "value"
    .parameter "version"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "upgradeAvailable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 245
    const-string v1, "upgradeVersion"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 246
    return-void
.end method

.method public setUpgradeOptional(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 225
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 226
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "upgradeOpt"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 227
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    return-void
.end method

.method public setUpgradePath(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 237
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "upgradeUrl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    return-void
.end method

.method public setUpgradeVersion(J)V
    .locals 2
    .parameter "value"

    .prologue
    .line 215
    iget-object v1, p0, Lcom/sprint/dsa/Prefs;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 216
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "appver"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    return-void
.end method
