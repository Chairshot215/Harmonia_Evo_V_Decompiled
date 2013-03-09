.class public Lcom/htc/sync/provider/weather/ReceiverIntentService;
.super Landroid/app/IntentService;
.source "ReceiverIntentService.java"


# static fields
.field public static final EVENT_CUSTOMIZATION:Ljava/lang/String; = "customization"

.field public static final KEY_EVENT:Ljava/lang/String; = "event"

.field private static final LOG_PREFIX:Ljava/lang/String; = "[IntentService] "

.field private static final LOG_TAG:Ljava/lang/String; = "WSP"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "ReceiverIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sync/provider/weather/ReceiverIntentService;->setIntentRedelivery(Z)V

    .line 29
    return-void
.end method

.method private loadCustomization(Landroid/content/Context;)V
    .locals 16
    .parameter "context"

    .prologue
    .line 46
    const/4 v8, 0x0

    .line 47
    .local v8, customizeData:[B
    const/4 v7, 0x0

    .line 50
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://customization_settings/SettingTable/application_weather_sync_provider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 52
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 56
    :cond_0
    if-eqz v7, :cond_1

    .line 57
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 61
    :cond_1
    if-eqz v8, :cond_8

    .line 62
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 63
    .local v11, parcel:Landroid/os/Parcel;
    const/4 v0, 0x0

    array-length v1, v8

    invoke-virtual {v11, v8, v0, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v6, bundle:Landroid/os/Bundle;
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 68
    const-string v0, "settings"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 69
    .local v10, functionBundle:Landroid/os/Bundle;
    if-eqz v10, :cond_7

    .line 70
    const-string v0, "temprature_unit"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 71
    .local v13, tempratureUnit:Ljava/lang/String;
    const-string v0, "WSP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cust_WeatherSync : TempratureUnit > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    :goto_0
    const-string v0, "update_interval"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 79
    .local v14, updateInterval:Ljava/lang/String;
    const-string v0, "WSP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cust_WeatherSync : UpdateFrequency > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v0, v1, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    :goto_1
    const-string v0, "sound_effect"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 87
    .local v15, value:Ljava/lang/String;
    const-string v0, "WSP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cust_WeatherSync : SoundEffect > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v12, 0x0

    .line 89
    .local v12, soundEffect:Z
    const-string v0, "true"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const/4 v12, 0x1

    .line 92
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/Weather/SoundEffect;->SETTING_KEY_SYNC_SOUND:Ljava/lang/String;

    if-eqz v12, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v10           #functionBundle:Landroid/os/Bundle;
    .end local v11           #parcel:Landroid/os/Parcel;
    .end local v12           #soundEffect:Z
    .end local v13           #tempratureUnit:Ljava/lang/String;
    .end local v14           #updateInterval:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :goto_3
    return-void

    .line 56
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 57
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    :catch_0
    move-exception v9

    .line 104
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WSP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IntentService] loading customization failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 75
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v10       #functionBundle:Landroid/os/Bundle;
    .restart local v11       #parcel:Landroid/os/Parcel;
    .restart local v13       #tempratureUnit:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v0, "WSP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IntentService] incorrect customization - temprature_unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static/range {p1 .. p1}, Lcom/htc/util/weather/WSPUtility;->setDefaultTemperatureUnit(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 83
    .restart local v14       #updateInterval:Ljava/lang/String;
    :cond_5
    const-string v0, "WSP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IntentService] incorrect customization - update_interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static/range {p1 .. p1}, Lcom/htc/util/weather/WSPUtility;->setDefaultAutoSyncFrequency(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 92
    .restart local v12       #soundEffect:Z
    .restart local v15       #value:Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 94
    .end local v12           #soundEffect:Z
    .end local v13           #tempratureUnit:Ljava/lang/String;
    .end local v14           #updateInterval:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :cond_7
    const-string v0, "WSP"

    const-string v1, "[IntentService] no customization settings"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static/range {p1 .. p1}, Lcom/htc/util/weather/WSPUtility;->setDefaultTemperatureUnit(Landroid/content/Context;)V

    .line 96
    invoke-static/range {p1 .. p1}, Lcom/htc/util/weather/WSPUtility;->setDefaultAutoSyncFrequency(Landroid/content/Context;)V

    goto :goto_3

    .line 99
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v10           #functionBundle:Landroid/os/Bundle;
    .end local v11           #parcel:Landroid/os/Parcel;
    :cond_8
    const-string v0, "WSP"

    const-string v1, "[IntentService] no customization settings"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static/range {p1 .. p1}, Lcom/htc/util/weather/WSPUtility;->setDefaultTemperatureUnit(Landroid/content/Context;)V

    .line 101
    invoke-static/range {p1 .. p1}, Lcom/htc/util/weather/WSPUtility;->setDefaultAutoSyncFrequency(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 33
    const-string v2, "event"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, event:Ljava/lang/String;
    const-string v2, "customization"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const-string v2, "WSP"

    const-string v3, "[IntentService] EVENT - CUSTOMIZATION, add weather account, load customization and start auto-sync agent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-direct {p0, p0}, Lcom/htc/sync/provider/weather/ReceiverIntentService;->loadCustomization(Landroid/content/Context;)V

    .line 38
    invoke-static {p0}, Lcom/htc/sync/provider/weather/Helper;->addWeatherAccount(Landroid/content/Context;)V

    .line 39
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.sync.provider.weather.NOTIFY_AUTOSYNC_AGENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/htc/sync/provider/weather/ReceiverIntentService;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method
