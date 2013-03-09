.class public Lcom/htc/opensense/sync/SyncSettingUtil;
.super Ljava/lang/Object;
.source "SyncSettingUtil.java"

# interfaces
.implements Lcom/htc/opensense/sync/SyncSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSyncSetting(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;Z)V
    .locals 10
    .parameter "context"
    .parameter "accountType"
    .parameter "updateWhenOpen"
    .parameter "syncInterval"
    .parameter "syncOptionsResId"
    .parameter "pkgName"
    .parameter "override"

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "account_type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 84
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 85
    .local v7, id:J
    if-eqz v6, :cond_1

    .line 87
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 91
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "account_type"

    invoke-virtual {v9, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-nez p6, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_3

    .line 97
    :cond_2
    const-string v0, "refresh_when_open"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v0, "sync_interval"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    :cond_3
    const-string v0, "update_secs_res_id"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v0, "plugin_pkg_name"

    invoke-virtual {v9, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-eqz v0, :cond_4

    .line 104
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    :goto_0
    return-void

    .line 91
    .end local v9           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 111
    .restart local v9       #values:Landroid/content/ContentValues;
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static addSyncSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "updateWhenOpen"
    .parameter "syncInterval"
    .parameter "syncOptionsResId"
    .parameter "syncUpdateIntent"
    .parameter "pkgName"
    .parameter "override"

    .prologue
    .line 217
    if-nez p2, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 218
    invoke-static/range {v1 .. v7}, Lcom/htc/opensense/sync/SyncSettingUtil;->addSyncSetting(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;Z)V

    .line 259
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "account_type=? AND account_name=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 226
    .local v8, cursor:Landroid/database/Cursor;
    const-wide/16 v9, -0x1

    .line 227
    .local v9, id:J
    if-eqz v8, :cond_2

    .line 229
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v9

    .line 233
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_2
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 237
    .local v11, values:Landroid/content/ContentValues;
    const-string v1, "account_type"

    invoke-virtual {v11, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "account_name"

    invoke-virtual {v11, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    if-nez p8, :cond_3

    const-wide/16 v1, -0x1

    cmp-long v1, v9, v1

    if-nez v1, :cond_4

    .line 240
    :cond_3
    const-string v1, "refresh_when_open"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    const-string v1, "sync_interval"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    :cond_4
    const-string v1, "update_secs_res_id"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    const-string v1, "update_intent_action"

    move-object/from16 v0, p6

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "plugin_pkg_name"

    move-object/from16 v0, p7

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-wide/16 v1, -0x1

    cmp-long v1, v9, v1

    if-eqz v1, :cond_5

    .line 248
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 250
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 233
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 254
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 256
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public static final getUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .parameter "context"
    .parameter "accountType"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "sync_interval"

    aput-object v3, v2, v5

    const-string v3, "account_type=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 13
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 15
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 20
    .local v7, mins:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 24
    .end local v7           #mins:I
    :goto_0
    return v7

    .line 20
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 24
    :cond_1
    const/16 v7, 0xe10

    goto :goto_0
.end method

.method public static final getUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 122
    if-nez p2, :cond_0

    .line 123
    invoke-static {p0, p1}, Lcom/htc/opensense/sync/SyncSettingUtil;->getUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 140
    :goto_0
    return v7

    .line 125
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "sync_interval"

    aput-object v3, v2, v5

    const-string v3, "account_type=? AND account_name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object p2, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 129
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 131
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 136
    .local v7, mins:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #mins:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_2
    const/16 v7, 0xe10

    goto :goto_0
.end method

.method public static isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "accountType"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "refresh_when_open"

    aput-object v3, v2, v8

    const-string v3, "account_type=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 39
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 41
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getShort(I)S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v7, :cond_0

    move v0, v7

    .line 45
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 48
    :goto_1
    return v0

    :cond_0
    move v0, v8

    .line 42
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v7

    .line 48
    goto :goto_1
.end method

.method public static isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 158
    if-nez p2, :cond_0

    .line 159
    invoke-static {p0, p1}, Lcom/htc/opensense/sync/SyncSettingUtil;->isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 174
    :goto_0
    return v0

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "refresh_when_open"

    aput-object v3, v2, v8

    const-string v3, "account_type=? AND account_name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    aput-object p2, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 165
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 167
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getShort(I)S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v7, :cond_1

    move v0, v7

    .line 171
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    move v0, v8

    .line 168
    goto :goto_1

    .line 171
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 174
    goto :goto_0
.end method

.method public static final setRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "refresh"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 179
    if-nez p2, :cond_0

    .line 180
    invoke-static {p0, p1, p3}, Lcom/htc/opensense/sync/SyncSettingUtil;->setRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 190
    :goto_0
    return-void

    .line 183
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 184
    .local v0, values:Landroid/content/ContentValues;
    const-string v4, "refresh_when_open"

    if-eqz p3, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "(account_type=? AND account_name=?)  OR (account_type=? AND account_name is NULL)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v3

    aput-object p2, v6, v2

    const/4 v2, 0x2

    aput-object p1, v6, v2

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v1, v3

    .line 184
    goto :goto_1
.end method

.method public static final setRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "accountType"
    .parameter "refresh"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .local v0, values:Landroid/content/ContentValues;
    const-string v4, "refresh_when_open"

    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "account_type=?"

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v1, v4, v0, v5, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 58
    return-void

    :cond_0
    move v1, v3

    .line 54
    goto :goto_0
.end method

.method public static final setUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "accountType"
    .parameter "sec"

    .prologue
    .line 29
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 30
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "sync_interval"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "account_type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public static final setUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "sec"

    .prologue
    .line 145
    if-nez p2, :cond_0

    .line 146
    invoke-static {p0, p1, p3}, Lcom/htc/opensense/sync/SyncSettingUtil;->setUpdateIntervalSecs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 150
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "sync_interval"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/sync/SyncSettingUtil;->SYNC_SETTING_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "account_type=? AND account_name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
