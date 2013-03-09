.class Lcom/htc/sdm/service/SDMDBMigrationIntentService$UpdateRingtoneTitle;
.super Ljava/lang/Object;
.source "SDMDBMigrationIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/service/SDMDBMigrationIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRingtoneTitle"
.end annotation


# instance fields
.field private cx:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/sdm/service/SDMDBMigrationIntentService;


# direct methods
.method public constructor <init>(Lcom/htc/sdm/service/SDMDBMigrationIntentService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService$UpdateRingtoneTitle;->this$0:Lcom/htc/sdm/service/SDMDBMigrationIntentService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService$UpdateRingtoneTitle;->cx:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/htc/sdm/service/SDMDBMigrationIntentService$UpdateRingtoneTitle;->cx:Landroid/content/Context;

    .line 109
    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/service/SDMDBMigrationIntentService$UpdateRingtoneTitle;->cx:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/sdm/util/SDMDBUtil;->CheckSDCardSound(Landroid/content/Context;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/service/SDMDBMigrationIntentService$UpdateRingtoneTitle;->cx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 116
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 120
    .local v11, InfoCursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/service/SDMDBMigrationIntentService$UpdateRingtoneTitle;->cx:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v15

    .line 122
    .local v15, curRingtone:Landroid/net/Uri;
    const/16 v17, 0x0

    .line 123
    .local v17, curRingtoneTitle:Ljava/lang/String;
    const/16 v16, 0x0

    .line 124
    .local v16, curRingtoneDisplay:Ljava/lang/String;
    const/4 v13, 0x0

    .line 126
    .local v13, SDMRingtoneTitle:Ljava/lang/String;
    const/16 v22, 0x0

    .line 127
    .local v22, soundSetRingtone:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/service/SDMDBMigrationIntentService$UpdateRingtoneTitle;->cx:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/sdm/util/SDMUtil;->getCurSoundsetGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 128
    .local v18, curSoundSetGUID:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "S_Ringtone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, ringWhere:Ljava/lang/String;
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 136
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 139
    .local v21, soundGUID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/service/SDMDBMigrationIntentService$UpdateRingtoneTitle;->cx:Landroid/content/Context;

    const/4 v3, 0x2

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Lcom/htc/sdm/util/SDMDBUtil;->GetSoundUri(Landroid/content/Context;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 141
    if-eqz v21, :cond_3

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    const/4 v14, 0x0

    .line 146
    .local v14, curRingCursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    move-object v6, v15

    :try_start_1
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 148
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const-string v2, "title"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 151
    const-string v2, "_display_name"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .line 160
    :cond_0
    if-eqz v14, :cond_1

    .line 161
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_1
    :goto_0
    const/4 v12, 0x0

    .line 165
    .local v12, RingInfoCursor:Landroid/database/Cursor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    .line 168
    .local v8, where:Ljava/lang/String;
    :try_start_3
    sget-object v6, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE_INFO:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 170
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 174
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 176
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .local v20, infoValues:Landroid/content/ContentValues;
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    if-eqz v17, :cond_8

    move-object/from16 v2, v17

    :goto_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE_INFO:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v1, v2, v0, v8, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/htc/sdm/util/SDMUtil;->generateSDMStatusNotificationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 190
    .end local v20           #infoValues:Landroid/content/ContentValues;
    :cond_2
    if-eqz v12, :cond_3

    .line 191
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 203
    .end local v8           #where:Ljava/lang/String;
    .end local v12           #RingInfoCursor:Landroid/database/Cursor;
    .end local v14           #curRingCursor:Landroid/database/Cursor;
    .end local v21           #soundGUID:Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v11, :cond_4

    .line 205
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/service/SDMDBMigrationIntentService$UpdateRingtoneTitle;->this$0:Lcom/htc/sdm/service/SDMDBMigrationIntentService;

    const/4 v3, 0x0

    #setter for: Lcom/htc/sdm/service/SDMDBMigrationIntentService;->m_UpdateRingtoneTitle:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->access$002(Lcom/htc/sdm/service/SDMDBMigrationIntentService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 209
    .end local v4           #ringWhere:Ljava/lang/String;
    .end local v13           #SDMRingtoneTitle:Ljava/lang/String;
    .end local v15           #curRingtone:Landroid/net/Uri;
    .end local v16           #curRingtoneDisplay:Ljava/lang/String;
    .end local v17           #curRingtoneTitle:Ljava/lang/String;
    .end local v18           #curSoundSetGUID:Ljava/lang/String;
    .end local v22           #soundSetRingtone:Landroid/net/Uri;
    :goto_3
    return-void

    .line 154
    .restart local v4       #ringWhere:Ljava/lang/String;
    .restart local v13       #SDMRingtoneTitle:Ljava/lang/String;
    .restart local v14       #curRingCursor:Landroid/database/Cursor;
    .restart local v15       #curRingtone:Landroid/net/Uri;
    .restart local v16       #curRingtoneDisplay:Ljava/lang/String;
    .restart local v17       #curRingtoneTitle:Ljava/lang/String;
    .restart local v18       #curSoundSetGUID:Ljava/lang/String;
    .restart local v21       #soundGUID:Ljava/lang/String;
    .restart local v22       #soundSetRingtone:Landroid/net/Uri;
    :catch_0
    move-exception v19

    .line 156
    .local v19, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 160
    if-eqz v14, :cond_1

    .line 161
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 196
    .end local v4           #ringWhere:Ljava/lang/String;
    .end local v13           #SDMRingtoneTitle:Ljava/lang/String;
    .end local v14           #curRingCursor:Landroid/database/Cursor;
    .end local v15           #curRingtone:Landroid/net/Uri;
    .end local v16           #curRingtoneDisplay:Ljava/lang/String;
    .end local v17           #curRingtoneTitle:Ljava/lang/String;
    .end local v18           #curSoundSetGUID:Ljava/lang/String;
    .end local v19           #e:Ljava/lang/Exception;
    .end local v21           #soundGUID:Ljava/lang/String;
    .end local v22           #soundSetRingtone:Landroid/net/Uri;
    :catch_1
    move-exception v19

    .line 199
    .restart local v19       #e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 203
    if-eqz v11, :cond_5

    .line 205
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sdm/service/SDMDBMigrationIntentService$UpdateRingtoneTitle;->this$0:Lcom/htc/sdm/service/SDMDBMigrationIntentService;

    const/4 v3, 0x0

    #setter for: Lcom/htc/sdm/service/SDMDBMigrationIntentService;->m_UpdateRingtoneTitle:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->access$002(Lcom/htc/sdm/service/SDMDBMigrationIntentService;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_3

    .line 160
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v4       #ringWhere:Ljava/lang/String;
    .restart local v13       #SDMRingtoneTitle:Ljava/lang/String;
    .restart local v14       #curRingCursor:Landroid/database/Cursor;
    .restart local v15       #curRingtone:Landroid/net/Uri;
    .restart local v16       #curRingtoneDisplay:Ljava/lang/String;
    .restart local v17       #curRingtoneTitle:Ljava/lang/String;
    .restart local v18       #curSoundSetGUID:Ljava/lang/String;
    .restart local v21       #soundGUID:Ljava/lang/String;
    .restart local v22       #soundSetRingtone:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_6

    .line 161
    :try_start_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 203
    .end local v4           #ringWhere:Ljava/lang/String;
    .end local v13           #SDMRingtoneTitle:Ljava/lang/String;
    .end local v14           #curRingCursor:Landroid/database/Cursor;
    .end local v15           #curRingtone:Landroid/net/Uri;
    .end local v16           #curRingtoneDisplay:Ljava/lang/String;
    .end local v17           #curRingtoneTitle:Ljava/lang/String;
    .end local v18           #curSoundSetGUID:Ljava/lang/String;
    .end local v21           #soundGUID:Ljava/lang/String;
    .end local v22           #soundSetRingtone:Landroid/net/Uri;
    :catchall_1
    move-exception v2

    if-eqz v11, :cond_7

    .line 205
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sdm/service/SDMDBMigrationIntentService$UpdateRingtoneTitle;->this$0:Lcom/htc/sdm/service/SDMDBMigrationIntentService;

    const/4 v5, 0x0

    #setter for: Lcom/htc/sdm/service/SDMDBMigrationIntentService;->m_UpdateRingtoneTitle:Ljava/lang/Thread;
    invoke-static {v3, v5}, Lcom/htc/sdm/service/SDMDBMigrationIntentService;->access$002(Lcom/htc/sdm/service/SDMDBMigrationIntentService;Ljava/lang/Thread;)Ljava/lang/Thread;

    throw v2

    .line 177
    .restart local v4       #ringWhere:Ljava/lang/String;
    .restart local v8       #where:Ljava/lang/String;
    .restart local v12       #RingInfoCursor:Landroid/database/Cursor;
    .restart local v13       #SDMRingtoneTitle:Ljava/lang/String;
    .restart local v14       #curRingCursor:Landroid/database/Cursor;
    .restart local v15       #curRingtone:Landroid/net/Uri;
    .restart local v16       #curRingtoneDisplay:Ljava/lang/String;
    .restart local v17       #curRingtoneTitle:Ljava/lang/String;
    .restart local v18       #curSoundSetGUID:Ljava/lang/String;
    .restart local v20       #infoValues:Landroid/content/ContentValues;
    .restart local v21       #soundGUID:Ljava/lang/String;
    .restart local v22       #soundSetRingtone:Landroid/net/Uri;
    :cond_8
    if-eqz v16, :cond_9

    move-object/from16 v2, v16

    goto :goto_1

    :cond_9
    :try_start_9
    const-string v2, ""
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 184
    .end local v20           #infoValues:Landroid/content/ContentValues;
    :catch_2
    move-exception v19

    .line 186
    .restart local v19       #e:Ljava/lang/Exception;
    :try_start_a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 190
    if-eqz v12, :cond_3

    .line 191
    :try_start_b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 190
    .end local v19           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    if-eqz v12, :cond_a

    .line 191
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
.end method
