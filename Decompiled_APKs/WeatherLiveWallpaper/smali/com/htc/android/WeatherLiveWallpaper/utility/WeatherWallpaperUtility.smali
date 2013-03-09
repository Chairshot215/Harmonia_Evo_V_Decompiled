.class public Lcom/htc/android/WeatherLiveWallpaper/utility/WeatherWallpaperUtility;
.super Ljava/lang/Object;
.source "WeatherWallpaperUtility.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WeatherLiveWallpaper"

.field private static final PREFIX:Ljava/lang/String; = "[WeatherWallpaperUtility]: "


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelPendingIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "action"

    .prologue
    .line 114
    if-eqz p0, :cond_0

    .line 115
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/utility/WeatherWallpaperUtility;->generatePendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 116
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 117
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 118
    .local v0, am:Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v2           #pendingIntent:Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static generatePendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "action"

    .prologue
    .line 75
    const/4 v2, 0x0

    .line 77
    .local v2, mPI:Landroid/app/PendingIntent;
    if-eqz p0, :cond_0

    .line 78
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 86
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v2

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAVSync()Z
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/htc/android/WeatherLiveWallpaper/utility/WeatherWallpaperUtility;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getCityCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 40
    const-string v0, "CurrentCity"

    .line 41
    .local v0, defaultvalue:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 42
    const-string v2, "WeatehrWallpaperSetting"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 43
    .local v1, settings:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 44
    const-string v2, "pref.weatherwallpaper.citycode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :cond_0
    return-object v0
.end method

.method public static getEnableSound(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, defaultvalue:Z
    if-eqz p0, :cond_0

    .line 54
    const-string v2, "WeatehrWallpaperSetting"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 55
    .local v1, settings:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 56
    const-string v2, "pref.weatherwallpaper.enablesound"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 59
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :cond_0
    return v0
.end method

.method public static getLooping()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public static getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 132
    .local v1, result:Landroid/content/Context;
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 139
    :goto_0
    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 136
    const-string v2, "WeatherLiveWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WeatherWallpaperUtility]: getPackageContext() - Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isTabletDevice()Z
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    return v0
.end method

.method public static setPendingIntent(Landroid/content/Context;JLjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "interval"
    .parameter "action"

    .prologue
    .line 93
    if-eqz p0, :cond_0

    .line 94
    :try_start_0
    invoke-static {p0, p3}, Lcom/htc/android/WeatherLiveWallpaper/utility/WeatherWallpaperUtility;->generatePendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 95
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v2, v5, p1

    .line 97
    .local v2, nextAutoSyncTime:J
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 98
    .local v0, am:Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 100
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v2           #nextAutoSyncTime:J
    .end local v4           #pendingIntent:Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
