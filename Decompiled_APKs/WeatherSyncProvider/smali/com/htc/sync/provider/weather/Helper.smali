.class public Lcom/htc/sync/provider/weather/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field private static final AUTOSYNC_GUARD_TIME:J = 0x2bf20L

.field public static final CATEGORY_CANCEL_ALL_REQUEST:Ljava/lang/String; = "cancel_all_request"

.field private static final DELETE_DATA_REQUEST_INTERVAL:J = 0x19bfcc00L

.field public static final LOG_FLAG:Z = false

.field private static final LOG_PREFIX:Ljava/lang/String; = "[Helper] "

.field public static final LOG_TAG:Ljava/lang/String; = "WSP"

.field public static final SETTING_KEY_AUTO_SYNC_FREQUENCY:Ljava/lang/String; = "com.htc.sync.provider.weather.setting.autosyncfrequency"

.field public static final SETTING_KEY_LAST_SYNC:Ljava/lang/String; = "com.htc.sync.provider.weather.setting.lastsync"

.field public static final SETTING_KEY_TEMPERATURE_UNIT:Ljava/lang/String; = "com.htc.sync.provider.weather.setting.temperatureunit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWeatherAccount(Landroid/content/Context;)V
    .locals 17
    .parameter "context"

    .prologue
    .line 159
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPPUtility;->getWeatherSyncAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_3

    .line 160
    const-string v1, "WSP"

    const-string v2, "[Helper] weather account is not existed, add a new one."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static/range {p0 .. p0}, Lcom/htc/sync/provider/weather/Helper;->getWeatherAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 164
    .local v11, accountName:Ljava/lang/String;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v12, bundle:Landroid/os/Bundle;
    const-string v1, "authAccount"

    invoke-virtual {v12, v1, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "accountType"

    const-string v2, "com.htc.sync.provider.weather"

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "CanRemove"

    const-string v2, "false"

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "MultipleLogin"

    const-string v2, "false"

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "EnableSmartWiFi"

    const-string v2, "true"

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v10, Landroid/accounts/Account;

    const-string v1, "com.htc.sync.provider.weather"

    invoke-direct {v10, v11, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .local v10, account:Landroid/accounts/Account;
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2, v12}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 175
    const-string v1, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    .line 176
    .local v13, cm:Landroid/net/ConnectivityManager;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v8, 0x1

    .line 177
    .local v8, _isBackgroundDataOn:Z
    :goto_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v9

    .line 178
    .local v9, _isMasterSyncAutomatically:Z
    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    const/4 v15, 0x1

    .line 180
    .local v15, isSyncAutomatically:Z
    :goto_1
    const-string v1, "com.htc.sync.provider.weather"

    const/4 v2, 0x1

    invoke-static {v10, v1, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 181
    const-string v1, "com.htc.sync.provider.weather"

    invoke-static {v10, v1, v15}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 184
    const/16 v4, 0x2a30

    .line 186
    .local v4, mUpdateSchedule:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 187
    .local v16, strUpdateSchedule:Ljava/lang/String;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 188
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v4, v1, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    const/16 v1, 0xe10

    if-eq v4, v1, :cond_0

    const/16 v1, 0x2a30

    if-eq v4, v1, :cond_0

    const/16 v1, 0x5460

    if-eq v4, v1, :cond_0

    const v1, 0xa8c0

    if-eq v4, v1, :cond_0

    const v1, 0x15180

    if-eq v4, v1, :cond_0

    .line 191
    const/16 v4, 0x2a30

    .line 198
    .end local v16           #strUpdateSchedule:Ljava/lang/String;
    :cond_0
    :goto_2
    const-string v2, "com.htc.sync.provider.weather"

    const/4 v3, 0x1

    const v5, 0x7f040004

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/htc/opensense/sync/SyncSettingUtil;->addSyncSetting(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;Z)V

    .line 203
    .end local v4           #mUpdateSchedule:I
    .end local v8           #_isBackgroundDataOn:Z
    .end local v9           #_isMasterSyncAutomatically:Z
    .end local v10           #account:Landroid/accounts/Account;
    .end local v11           #accountName:Ljava/lang/String;
    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v13           #cm:Landroid/net/ConnectivityManager;
    .end local v15           #isSyncAutomatically:Z
    :goto_3
    return-void

    .line 176
    .restart local v10       #account:Landroid/accounts/Account;
    .restart local v11       #accountName:Ljava/lang/String;
    .restart local v12       #bundle:Landroid/os/Bundle;
    .restart local v13       #cm:Landroid/net/ConnectivityManager;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 178
    .restart local v8       #_isBackgroundDataOn:Z
    .restart local v9       #_isMasterSyncAutomatically:Z
    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    .line 193
    .restart local v4       #mUpdateSchedule:I
    .restart local v15       #isSyncAutomatically:Z
    :catch_0
    move-exception v14

    .line 194
    .local v14, e:Ljava/lang/Exception;
    const/16 v4, 0x2a30

    .line 195
    const-string v1, "WSP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Helper] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 200
    .end local v4           #mUpdateSchedule:I
    .end local v8           #_isBackgroundDataOn:Z
    .end local v9           #_isMasterSyncAutomatically:Z
    .end local v10           #account:Landroid/accounts/Account;
    .end local v11           #accountName:Ljava/lang/String;
    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v13           #cm:Landroid/net/ConnectivityManager;
    .end local v14           #e:Ljava/lang/Exception;
    .end local v15           #isSyncAutomatically:Z
    :cond_3
    const-string v1, "WSP"

    const-string v2, "[Helper] weather account is existed, upgrade it"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static/range {p0 .. p0}, Lcom/htc/sync/provider/weather/Helper;->upgradeWeatherAccount(Landroid/content/Context;)V

    goto :goto_3
.end method

.method public static getOverCustomTimeItems(Landroid/content/Context;)[Lcom/htc/util/weather/WSPRequest;
    .locals 27
    .parameter "context"

    .prologue
    .line 39
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v25, syncItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/weather/WSPRequest;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 44
    .local v13, currentTime:J
    const-wide/32 v2, 0x19bfcc00

    sub-long v17, v13, v2

    .line 47
    .local v17, deleteDataRequstInterval:J
    const/16 v16, 0x0

    .line 48
    .local v16, dataCursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 51
    .local v5, where:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->lastUpdate:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/32 v3, 0x2bf20

    sub-long v3, v13, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->lastUpdate:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 55
    const/16 v24, 0x0

    .line 57
    .local v24, req:Lcom/htc/util/weather/WSPRequest;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/util/weather/WSPPUtility;->URI_DATA:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->lastRequest:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v8}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " DESC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 63
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    :cond_0
    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->type:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 66
    .local v26, type:I
    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->param1:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 67
    .local v22, param1:Ljava/lang/String;
    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->param2:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 69
    .local v23, param2:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_6

    .line 70
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPPUtility;->generateWSPRequestForCurrentLocationWithCurCacheData(Landroid/content/Context;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v24

    .line 71
    if-nez v24, :cond_4

    .line 72
    const-string v2, "WSP"

    const-string v3, "[Helper] Auto sync cur loc, but there is no cur loc in db. Maybe the cur loc in db was deleted because of a new cur loc."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 134
    .end local v22           #param1:Ljava/lang/String;
    .end local v23           #param2:Ljava/lang/String;
    .end local v26           #type:I
    :cond_2
    if-eqz v16, :cond_3

    .line 135
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_3
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/htc/util/weather/WSPRequest;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/util/weather/WSPRequest;

    return-object v2

    .line 75
    .restart local v22       #param1:Ljava/lang/String;
    .restart local v23       #param2:Ljava/lang/String;
    .restart local v26       #type:I
    :cond_4
    :try_start_1
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    .end local v22           #param1:Ljava/lang/String;
    .end local v23           #param2:Ljava/lang/String;
    .end local v26           #type:I
    :catchall_0
    move-exception v2

    if-eqz v16, :cond_5

    .line 135
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    .line 81
    .restart local v22       #param1:Ljava/lang/String;
    .restart local v23       #param2:Ljava/lang/String;
    .restart local v26       #type:I
    :cond_6
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_1

    .line 83
    const/4 v15, 0x0

    .line 86
    .local v15, cursorForCity:Landroid/database/Cursor;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v2, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "location"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->code:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    const-string v4, "\'\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'com.htc.elroy.Weather\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->_id:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 98
    if-eqz v15, :cond_8

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    .line 99
    invoke-static/range {v22 .. v22}, Lcom/htc/util/weather/WSPPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v24

    .line 100
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    :cond_7
    :goto_1
    if-eqz v15, :cond_1

    .line 127
    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 107
    :cond_8
    :try_start_4
    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->lastRequest:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 110
    .local v20, lastRequestTime:J
    cmp-long v2, v20, v17

    if-gez v2, :cond_7

    .line 111
    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->_id:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 112
    .local v12, _id:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/util/weather/WSPPUtility;->URI_DATA:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->_id:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v6}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "=\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 122
    .end local v12           #_id:Ljava/lang/String;
    .end local v20           #lastRequestTime:J
    :catch_0
    move-exception v19

    .line 123
    .local v19, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 126
    if-eqz v15, :cond_1

    .line 127
    :try_start_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 126
    .end local v19           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v15, :cond_9

    .line 127
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static getWeatherAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveWeatherDataToCache(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;)V
    .locals 6
    .parameter "context"
    .parameter "data"

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getParam1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getParam2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/util/weather/WSPPUtility;->generateWeatherRequestDbWhereCondition(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/util/weather/WSPPUtility;->URI_DATA:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 147
    .local v0, ret:I
    if-lez v0, :cond_0

    .line 152
    :cond_0
    return-void
.end method

.method public static upgradeWeatherAccount(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 206
    const-string v0, "WSP"

    const-string v1, "[Helper] UpgradeAccount check weather account setting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {p0}, Lcom/htc/util/weather/WSPPUtility;->getWeatherSyncAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v7

    .line 208
    .local v7, account:Landroid/accounts/Account;
    if-eqz v7, :cond_2

    .line 213
    const/16 v3, 0x2a30

    .line 215
    .local v3, mUpdateSchedule:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 216
    .local v10, strUpdateSchedule:Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 217
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v3, v0, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    const/16 v0, 0xe10

    if-eq v3, v0, :cond_0

    const/16 v0, 0x2a30

    if-eq v3, v0, :cond_0

    const/16 v0, 0x5460

    if-eq v3, v0, :cond_0

    const v0, 0xa8c0

    if-eq v3, v0, :cond_0

    const v0, 0x15180

    if-eq v3, v0, :cond_0

    .line 220
    const/16 v3, 0x2a30

    .line 227
    .end local v10           #strUpdateSchedule:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v0, "com.htc.sync.provider.weather"

    invoke-static {p0, v0}, Lcom/htc/opensense/sync/SyncSettingUtil;->isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 230
    .local v9, mbUpdateOpen:Z
    const-string v1, "com.htc.sync.provider.weather"

    if-eqz v9, :cond_1

    move v2, v6

    :goto_1
    const v4, 0x7f040004

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/htc/opensense/sync/SyncSettingUtil;->addSyncSetting(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;Z)V

    .line 235
    .end local v3           #mUpdateSchedule:I
    .end local v9           #mbUpdateOpen:Z
    :goto_2
    return-void

    .line 222
    .restart local v3       #mUpdateSchedule:I
    :catch_0
    move-exception v8

    .line 223
    .local v8, e:Ljava/lang/Exception;
    const/16 v3, 0x2a30

    .line 224
    const-string v0, "WSP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Helper] UpgradeAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #mbUpdateOpen:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 232
    .end local v3           #mUpdateSchedule:I
    .end local v9           #mbUpdateOpen:Z
    :cond_2
    const-string v0, "WSP"

    const-string v1, "[Helper] UpgradeAccount weather account does not existe"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
