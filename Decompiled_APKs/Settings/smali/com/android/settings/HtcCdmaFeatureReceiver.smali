.class public Lcom/android/settings/HtcCdmaFeatureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcCdmaFeatureReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HtcCdmaFeatureReceiver$ContentObserverOfGPS;
    }
.end annotation


# static fields
.field public static final ETRX_CHECKGPSONE_ONBOOT:Ljava/lang/String; = "GPSONE"

.field private static final INTENT_GPSONE_ONBOOT_TESTING:Ljava/lang/String; = "android.intent.action.GPSONE_MODE_ONBOOT_TESTING"

.field public static final INTENT_TO_CHECK_GPSONE_OBSERVER:Ljava/lang/String; = "htc.android.intent.action.CHECK_GPSONE_OBSERVER"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaFeatureReceiver"

.field public static final PREF_BOOT_COUNT_KEY:Ljava/lang/String; = "BOOT_COUNT"

.field public static final PREF_CDMA_FEATURE:Ljava/lang/String; = "HTC_CDMA_FEATURE"

.field public static final PREF_SHOW_GPSONE_WARNING_ON_BOOT_KEY:Ljava/lang/String; = "SHOW_GPSONE_WARNING"

.field public static final VALUE_GPSONE:Ljava/lang/String; = "GPSONE"

.field public static final VALUE_GPSONE_CONFIRM:Ljava/lang/String; = "DoubleConfirm"

.field public static final VALUE_GPSONE_OFF:Ljava/lang/String; = "OFF"

.field public static contentObserverOfGPS:Lcom/android/settings/HtcCdmaFeatureReceiver$ContentObserverOfGPS;

.field private static settings:Landroid/content/SharedPreferences;


# instance fields
.field private LOGD:Z

.field private final VZW_LBS_PROVIDER:Ljava/lang/String;

.field private mBootCount:I

.field private mContext:Landroid/content/Context;

.field private showWarningOnBoot:Z

.field telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/android/settings/HtcCdmaFeatureReceiver;->settings:Landroid/content/SharedPreferences;

    .line 63
    sput-object v0, Lcom/android/settings/HtcCdmaFeatureReceiver;->contentObserverOfGPS:Lcom/android/settings/HtcCdmaFeatureReceiver$ContentObserverOfGPS;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    const-string v0, "vzw_lbs"

    iput-object v0, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->VZW_LBS_PROVIDER:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 41
    iput-boolean v1, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->LOGD:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->showWarningOnBoot:Z

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mBootCount:I

    .line 46
    iput-object v2, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/HtcCdmaFeatureReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/HtcCdmaFeatureReceiver;->syncLocationSettingIcon()V

    return-void
.end method

.method public static checkGPSONEObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "htc.android.intent.action.CHECK_GPSONE_OBSERVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, checkIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.HtcCdmaFeatureReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method private handleNotificationOfGPSONE()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 175
    const-string v6, "HtcCdmaFeatureReceiver"

    const-string v7, "handleNotificationOfGPSONE"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v4, 0x0

    .line 179
    .local v4, setLocationSettingIconON:Z
    const/4 v5, 0x0

    .line 182
    .local v5, valueOfGPSONEsetting:Z
    sget-boolean v6, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    if-ne v6, v9, :cond_0

    .line 184
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vzw_lbs"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    .line 186
    const-string v6, "HtcCdmaFeatureReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GPS ONE is ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 195
    .local v1, enableGPSSatellites:Z
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 197
    const-string v6, "HtcCdmaFeatureReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GPS Satellites is ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    :goto_1
    if-eq v5, v9, :cond_1

    if-ne v1, v9, :cond_4

    .line 205
    :cond_1
    iget v6, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mBootCount:I

    if-le v6, v9, :cond_2

    sget-boolean v6, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    if-ne v6, v9, :cond_2

    .line 208
    iget-object v6, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/settings/HtcCdmaFeatureReceiver;->isPrefOfShowWarnningOnBoot(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, v9, :cond_2

    .line 209
    const-string v6, "HtcCdmaFeatureReceiver"

    const-string v7, "GPS ready to show warning message"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v3, quickStartIntent:Landroid/content/Intent;
    sget-boolean v6, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    if-ne v6, v9, :cond_3

    .line 213
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.HtcCdmaGPSLocationSettingV2"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    :goto_2
    const-string v6, "GPSONE"

    const-string v7, "GPSONE"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 220
    iget-object v6, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 224
    .end local v3           #quickStartIntent:Landroid/content/Intent;
    :cond_2
    const/4 v4, 0x1

    .line 234
    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.GPSONE_MODE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v2, intent:Landroid/content/Intent;
    if-ne v4, v9, :cond_6

    .line 236
    const-string v6, "MtGpsSetting"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    :goto_4
    iget-object v6, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 242
    return-void

    .line 187
    .end local v1           #enableGPSSatellites:Z
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "HtcCdmaFeatureReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 198
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #enableGPSSatellites:Z
    :catch_1
    move-exception v0

    .line 199
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v6, "HtcCdmaFeatureReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 215
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #quickStartIntent:Landroid/content/Intent;
    :cond_3
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.HtcCdmaGPSLocationSetting"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 228
    .end local v3           #quickStartIntent:Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mContext:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->showWarningOnBoot:Z

    invoke-static {v6, v7}, Lcom/android/settings/HtcCdmaFeatureReceiver;->setPrefOfShowWarnningOnBoot(Landroid/content/Context;Z)V

    .line 229
    iget-boolean v6, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->LOGD:Z

    if-eqz v6, :cond_5

    const-string v6, "HtcCdmaFeatureReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inital showGPSONEWarningOnBoot ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->showWarningOnBoot:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 238
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_6
    const-string v6, "MtGpsSetting"

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4
.end method

.method private initObserver(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 161
    sget-object v0, Lcom/android/settings/HtcCdmaFeatureReceiver;->contentObserverOfGPS:Lcom/android/settings/HtcCdmaFeatureReceiver$ContentObserverOfGPS;

    if-nez v0, :cond_0

    .line 163
    const-string v0, "HtcCdmaFeatureReceiver"

    const-string v1, "contentObserver Of GPSONE is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v0, Lcom/android/settings/HtcCdmaFeatureReceiver$ContentObserverOfGPS;

    invoke-direct {v0, p0}, Lcom/android/settings/HtcCdmaFeatureReceiver$ContentObserverOfGPS;-><init>(Lcom/android/settings/HtcCdmaFeatureReceiver;)V

    sput-object v0, Lcom/android/settings/HtcCdmaFeatureReceiver;->contentObserverOfGPS:Lcom/android/settings/HtcCdmaFeatureReceiver$ContentObserverOfGPS;

    .line 167
    iget-object v0, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Lcom/android/settings/HtcCdmaFeatureReceiver;->contentObserverOfGPS:Lcom/android/settings/HtcCdmaFeatureReceiver$ContentObserverOfGPS;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 171
    :cond_0
    return-void
.end method

.method private isPrefOfShowWarnningOnBoot(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 260
    sget-object v1, Lcom/android/settings/HtcCdmaFeatureReceiver;->settings:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 261
    const-string v1, "HTC_CDMA_FEATURE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/settings/HtcCdmaFeatureReceiver;->settings:Landroid/content/SharedPreferences;

    .line 264
    :cond_0
    sget-object v1, Lcom/android/settings/HtcCdmaFeatureReceiver;->settings:Landroid/content/SharedPreferences;

    const-string v2, "SHOW_GPSONE_WARNING"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 266
    .local v0, ret:Z
    const-string v1, "HtcCdmaFeatureReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OoO needShow Warning On Boot("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return v0
.end method

.method public static setPrefOfShowWarnningOnBoot(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 248
    const-string v1, "HtcCdmaFeatureReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OoO setPrefOfShowWarnningOnBoot("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object v1, Lcom/android/settings/HtcCdmaFeatureReceiver;->settings:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 251
    const-string v1, "HTC_CDMA_FEATURE"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/settings/HtcCdmaFeatureReceiver;->settings:Landroid/content/SharedPreferences;

    .line 253
    :cond_0
    sget-object v1, Lcom/android/settings/HtcCdmaFeatureReceiver;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 254
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "SHOW_GPSONE_WARNING"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 256
    return-void
.end method

.method private syncLocationSettingIcon()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 67
    iget-object v4, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gps"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 71
    .local v1, enableGPSsatellites:Z
    const/4 v0, 0x0

    .line 73
    .local v0, enableGPSONE:Z
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    if-ne v4, v7, :cond_0

    .line 74
    iget-object v4, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vzw_lbs"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 78
    :cond_0
    const/4 v3, 0x0

    .line 79
    .local v3, setLocationSettingIconON:Z
    if-eq v0, v7, :cond_1

    if-ne v1, v7, :cond_2

    .line 80
    :cond_1
    const/4 v3, 0x1

    .line 83
    :cond_2
    const-string v4, "HtcCdmaFeatureReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OoO GPS,GPSONE("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.GPSONE_MODE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, intent:Landroid/content/Intent;
    if-ne v3, v7, :cond_3

    .line 87
    iget-object v4, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/settings/HtcCdmaFeatureReceiver;->setPrefOfShowWarnningOnBoot(Landroid/content/Context;Z)V

    .line 88
    const-string v4, "MtGpsSetting"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    :goto_0
    iget-object v4, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    return-void

    .line 90
    :cond_3
    iget-object v4, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4, v8}, Lcom/android/settings/HtcCdmaFeatureReceiver;->setPrefOfShowWarnningOnBoot(Landroid/content/Context;Z)V

    .line 91
    const-string v4, "MtGpsSetting"

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    iput-object p1, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mContext:Landroid/content/Context;

    .line 103
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 105
    .local v2, nm:Landroid/app/NotificationManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, action:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcCdmaFeatureReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OoO onReceiveIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 109
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.GPSONE_MODE_ONBOOT_TESTING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 113
    :cond_1
    iget-object v3, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    if-eq v3, v8, :cond_2

    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v3, v7, :cond_5

    .line 119
    :cond_2
    iget-object v3, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mContext:Landroid/content/Context;

    const-string v4, "HTC_CDMA_FEATURE"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lcom/android/settings/HtcCdmaFeatureReceiver;->settings:Landroid/content/SharedPreferences;

    .line 120
    sget-object v3, Lcom/android/settings/HtcCdmaFeatureReceiver;->settings:Landroid/content/SharedPreferences;

    const-string v4, "BOOT_COUNT"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mBootCount:I

    .line 121
    iget v3, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mBootCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mBootCount:I

    .line 122
    iget-boolean v3, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->LOGD:Z

    if-eqz v3, :cond_3

    const-string v3, "HtcCdmaFeatureReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OoO get boot Count ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mBootCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_3
    sget-object v3, Lcom/android/settings/HtcCdmaFeatureReceiver;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 124
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "BOOT_COUNT"

    iget v4, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mBootCount:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    sget-object v3, Lcom/android/settings/HtcCdmaFeatureReceiver;->settings:Landroid/content/SharedPreferences;

    const-string v4, "BOOT_COUNT"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mBootCount:I

    .line 127
    iget-boolean v3, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->LOGD:Z

    if-eqz v3, :cond_4

    const-string v3, "HtcCdmaFeatureReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OoO doublecheck the boot count("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mBootCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_4
    iget-object v3, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/settings/HtcCdmaFeatureReceiver;->initObserver(Landroid/content/Context;)V

    .line 131
    invoke-direct {p0}, Lcom/android/settings/HtcCdmaFeatureReceiver;->handleNotificationOfGPSONE()V

    .line 148
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_5
    :goto_0
    return-void

    .line 133
    :cond_6
    const-string v3, "htc.android.intent.action.CHECK_GPSONE_OBSERVER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 135
    iget-object v3, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    if-eq v3, v8, :cond_7

    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v3, v7, :cond_5

    .line 145
    :cond_7
    iget-object v3, p0, Lcom/android/settings/HtcCdmaFeatureReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/settings/HtcCdmaFeatureReceiver;->initObserver(Landroid/content/Context;)V

    goto :goto_0
.end method
