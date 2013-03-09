.class public Lcom/htc/sdm/service/SDMCWAddSoundService;
.super Landroid/app/IntentService;
.source "SDMCWAddSoundService.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final PREFIX:Ljava/lang/String; = "[SDMCWAddSoundService] "


# instance fields
.field private numMediaFileScanned:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "SDMCWAddSoundService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sdm/service/SDMCWAddSoundService;->numMediaFileScanned:I

    .line 30
    return-void
.end method

.method private GetCWFilePath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 166
    const-string v2, "/data/data/cw/ringtone"

    .line 167
    .local v2, RINGTONE_FILE_PATH_NAME:Ljava/lang/String;
    const-string v1, ".xml"

    .line 168
    .local v1, RINGTONE_FILE_EXT:Ljava/lang/String;
    const/4 v0, 0x0

    .line 169
    .local v0, CWFilePath:Ljava/lang/String;
    const/4 v4, 0x0

    .line 172
    .local v4, isCWFileExist:Z
    :try_start_0
    const-string v0, "/data/data/cw/ringtone.xml"

    .line 173
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v3, cwFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 177
    const/4 v4, 0x1

    .line 184
    .end local v3           #cwFile:Ljava/io/File;
    :cond_0
    :goto_0
    const/4 v5, 0x1

    if-ne v5, v4, :cond_1

    .line 190
    .end local v0           #CWFilePath:Ljava/lang/String;
    :goto_1
    return-object v0

    .restart local v0       #CWFilePath:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 179
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private GetSoundUri(Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/lang/String;
    .locals 6
    .parameter "soundSet"

    .prologue
    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, MediaUri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 396
    .local v1, SoundUri:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMCWAddSoundService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/sdm/provider/SoundSetDAO;->file_url:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sdm/util/SDMDBUtil;->findMediaStoreUriBySDMUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 397
    const/16 v3, 0x78

    .line 398
    .local v3, retryCounter:I
    :goto_0
    if-nez v0, :cond_1

    if-lez v3, :cond_1

    .line 402
    const-wide/16 v4, 0x2710

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 403
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMCWAddSoundService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/sdm/provider/SoundSetDAO;->file_url:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sdm/util/SDMDBUtil;->findMediaStoreUriBySDMUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 409
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 405
    :catch_0
    move-exception v2

    .line 407
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 418
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v3           #retryCounter:I
    :catch_1
    move-exception v4

    .line 423
    :cond_0
    :goto_2
    return-object v1

    .line 411
    .restart local v3       #retryCounter:I
    :cond_1
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_2
.end method

.method private SaveDefaultSetting(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/util/HashMap;)V
    .locals 7
    .parameter "xmlInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sdm/provider/SoundSetChildDAO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p2, childList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/sdm/provider/SoundSetChildDAO;>;"
    :try_start_0
    const-string v4, "SoundSetPref"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/htc/sdm/service/SDMCWAddSoundService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 341
    .local v2, pref:Landroid/content/SharedPreferences;
    iget-object v4, p1, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sdm/provider/SoundSetDAO;

    .line 343
    .local v3, soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    iget v4, v3, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 345
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefRingtone"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 380
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    .end local v3           #soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    :catch_0
    move-exception v4

    .line 386
    :cond_1
    return-void

    .line 347
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #pref:Landroid/content/SharedPreferences;
    .restart local v3       #soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    :cond_2
    iget v4, v3, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 349
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefAlarm"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 351
    :cond_3
    iget v4, v3, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 353
    iget-object v4, v3, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdm/provider/SoundSetChildDAO;

    .line 354
    .local v0, child:Lcom/htc/sdm/provider/SoundSetChildDAO;
    if-eqz v0, :cond_0

    .line 356
    iget-object v4, v0, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    const-string v5, "Calendar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 358
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefCalendar"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 360
    :cond_4
    iget-object v4, v0, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    const-string v5, "Message"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 362
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefMsg"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 364
    :cond_5
    iget-object v4, v0, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    const-string v5, "EMail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 366
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefEmail"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 368
    :cond_6
    iget-object v4, v0, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    const-string v5, "Task"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 370
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefEmail"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 374
    :cond_7
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "PrefDefNotification"

    iget-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private SaveSIEToSoundSetInfoTable(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/lang/String;)V
    .locals 13
    .parameter "xmlInfo"
    .parameter "Default_GUID"

    .prologue
    .line 280
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMCWAddSoundService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 281
    .local v0, mCR:Landroid/content/ContentResolver;
    iget-object v1, p1, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetInfoDAOs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/sdm/provider/SoundSetInfoDAO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .local v11, soundSetInfo:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    const/4 v3, 0x0

    .line 284
    .local v3, infoWhere:Ljava/lang/String;
    const/4 v6, 0x0

    .line 287
    .local v6, c:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_1
    iget v2, v11, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    if-ne v1, v2, :cond_3

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->lang:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 291
    iget-object v10, v11, Lcom/htc/sdm/provider/SoundSetInfoDAO;->name:Ljava/lang/String;

    .line 292
    .local v10, name:Ljava/lang/String;
    iget-object v7, v11, Lcom/htc/sdm/provider/SoundSetInfoDAO;->description:Ljava/lang/String;

    .line 293
    .local v7, description:Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 294
    .local v12, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->description:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget v1, v11, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getInfoTableUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v12, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 303
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.htc.intent.ACTION_PERSONALIZE_SOUND_SET_CHANGED"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v9, intent:Landroid/content/Intent;
    const-string v1, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v9, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, v9}, Lcom/htc/sdm/service/SDMCWAddSoundService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    .end local v7           #description:Ljava/lang/String;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #name:Ljava/lang/String;
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    if-eqz v6, :cond_0

    .line 325
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 329
    .end local v0           #mCR:Landroid/content/ContentResolver;
    .end local v3           #infoWhere:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #soundSetInfo:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    :catch_0
    move-exception v1

    .line 334
    :cond_2
    return-void

    .line 309
    .restart local v0       #mCR:Landroid/content/ContentResolver;
    .restart local v3       #infoWhere:Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v11       #soundSetInfo:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/htc/sdm/provider/SoundSetInfoDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->lang:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    iget v1, v11, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getInfoTableUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 314
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 316
    iget v1, v11, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getInfoTableUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v11}, Lcom/htc/sdm/provider/SoundSetInfoDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 324
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 325
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private SaveSIEToSoundSetTable(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/lang/String;)Z
    .locals 14
    .parameter "xmlInfo"
    .parameter "Default_GUID"

    .prologue
    .line 195
    const/4 v11, 0x0

    .line 196
    .local v11, isInsertSIEItem:Z
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMCWAddSoundService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 197
    .local v0, mCR:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 198
    .local v8, childList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/sdm/provider/SoundSetChildDAO;>;"
    const/4 v6, 0x0

    .line 201
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p1, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/sdm/provider/SoundSetDAO;

    .line 203
    .local v12, soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    const/4 v1, 0x1

    iget v2, v12, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    if-eq v1, v2, :cond_0

    .line 205
    invoke-direct {p0, v12}, Lcom/htc/sdm/service/SDMCWAddSoundService;->GetSoundUri(Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, where:Ljava/lang/String;
    iget v1, v12, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 211
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 213
    iget v1, v12, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/sdm/provider/SoundSetDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 214
    const/4 v11, 0x1

    .line 221
    :cond_1
    iget v1, v12, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 226
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMCWAddSoundService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v12, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    iget v4, v12, Lcom/htc/sdm/provider/SoundSetDAO;->srcType:I

    iget v5, v12, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    invoke-static {v5}, Lcom/htc/sdm/util/SDMUtil;->RefID2Type(I)Ljava/lang/String;

    move-result-object v5

    iget-object v13, v12, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v1, v2, v4, v5, v13}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySoundByService(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V

    .line 257
    :cond_2
    iget-object v1, v12, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, v12, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v4}, Lcom/htc/sdm/util/SDMDBUtil;->SetMusicProperty(Landroid/content/Context;Landroid/net/Uri;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 262
    .end local v3           #where:Ljava/lang/String;
    .end local v12           #soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    :catch_0
    move-exception v1

    .line 269
    if-eqz v6, :cond_3

    .line 270
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_3
    :goto_1
    return v11

    .line 231
    .restart local v3       #where:Ljava/lang/String;
    .restart local v12       #soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    :cond_4
    :try_start_1
    invoke-virtual/range {p1 .. p2}, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->getChildList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    .line 232
    if-eqz v8, :cond_2

    .line 234
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/sdm/provider/SoundSetChildDAO;

    .line 238
    .local v7, child:Lcom/htc/sdm/provider/SoundSetChildDAO;
    iget-object v1, v7, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    iget-object v2, v12, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 244
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMCWAddSoundService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v12, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    iget v4, v12, Lcom/htc/sdm/provider/SoundSetDAO;->srcType:I

    iget-object v5, v7, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    iget-object v13, v12, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v1, v2, v4, v5, v13}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySoundByService(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 269
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #child:Lcom/htc/sdm/provider/SoundSetChildDAO;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    .line 270
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 269
    :cond_7
    if-eqz v6, :cond_3

    .line 270
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/htc/sdm/service/SDMCWAddSoundService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/sdm/service/SDMCWAddSoundService;->numMediaFileScanned:I

    return v0
.end method

.method static synthetic access$008(Lcom/htc/sdm/service/SDMCWAddSoundService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/sdm/service/SDMCWAddSoundService;->numMediaFileScanned:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/sdm/service/SDMCWAddSoundService;->numMediaFileScanned:I

    return v0
.end method

.method private insertCWPresetSoundSet()V
    .locals 8

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMCWAddSoundService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 95
    .local v5, mAM:Landroid/content/res/AssetManager;
    const-string v1, "28c33567b07d4dec8d38d4547d595163"

    .line 99
    .local v1, Default_GUID:Ljava/lang/String;
    const/4 v0, 0x0

    .line 100
    .local v0, CustCWFilePath:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/sdm/service/SDMCWAddSoundService;->GetCWFilePath()Ljava/lang/String;

    move-result-object v0

    .line 101
    const/4 v6, 0x0

    .line 102
    .local v6, xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    const/4 v2, 0x0

    .line 104
    .local v2, childList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/sdm/provider/SoundSetChildDAO;>;"
    if-eqz v0, :cond_1

    .line 106
    invoke-static {v0}, Lcom/htc/sdm/service/SDMService;->ParseSIEXML(Ljava/lang/String;)Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;

    move-result-object v6

    .line 107
    invoke-virtual {p0, v6}, Lcom/htc/sdm/service/SDMCWAddSoundService;->scanMediaFile(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;)V

    .line 108
    const/4 v4, 0x0

    .line 109
    .local v4, isInsertSIEItem:Z
    invoke-direct {p0, v6, v1}, Lcom/htc/sdm/service/SDMCWAddSoundService;->SaveSIEToSoundSetTable(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/lang/String;)Z

    move-result v4

    .line 110
    invoke-direct {p0, v6, v1}, Lcom/htc/sdm/service/SDMCWAddSoundService;->SaveSIEToSoundSetInfoTable(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/lang/String;)V

    .line 111
    if-eqz v4, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMCWAddSoundService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/htc/sdm/util/SDMDBUtil;->updateSoundSetSize(Landroid/content/Context;Ljava/lang/String;)I

    .line 113
    :cond_0
    invoke-virtual {v6, v1}, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->getChildList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 115
    .end local v4           #isInsertSIEItem:Z
    :cond_1
    invoke-direct {p0, v6, v2}, Lcom/htc/sdm/service/SDMCWAddSoundService;->SaveDefaultSetting(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/util/HashMap;)V

    .line 118
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMCWAddSoundService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/sdm/util/SDMUtil;->SetCWReady(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v2           #childList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/sdm/provider/SoundSetChildDAO;>;"
    .end local v6           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v3

    .line 122
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 52
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 58
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, CWFilePath:Ljava/lang/String;
    const/4 v1, 0x1

    .line 70
    .local v1, goCustomizeNormal:Z
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMCWAddSoundService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/sdm/util/SDMUtil;->IsCWReady(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/htc/sdm/service/SDMCWAddSoundService;->GetCWFilePath()Ljava/lang/String;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/htc/sdm/service/SDMCWAddSoundService;->insertCWPresetSoundSet()V

    .line 88
    .end local v0           #CWFilePath:Ljava/lang/String;
    .end local v1           #goCustomizeNormal:Z
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public scanMediaFile(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;)V
    .locals 9
    .parameter "xmlInfo"

    .prologue
    .line 128
    iget-object v6, p1, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 129
    .local v3, numOfSound:I
    new-array v4, v3, [Ljava/lang/String;

    .line 130
    .local v4, sMediaFilePath:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 131
    .local v1, i:I
    iget-object v6, p1, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sdm/provider/SoundSetDAO;

    .line 133
    .local v5, soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    const/4 v6, 0x1

    iget v7, v5, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    if-eq v6, v7, :cond_0

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/htc/sdm/provider/SoundSetDAO;->file_url:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    .line 136
    const-string v6, "SDM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SDMCWAddSoundService] media scan "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/htc/sdm/provider/SoundSetDAO;->file_url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v5           #soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    :cond_1
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/sdm/service/SDMCWAddSoundService;->numMediaFileScanned:I

    .line 142
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMCWAddSoundService;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lcom/htc/sdm/service/SDMCWAddSoundService$1;

    invoke-direct {v8, p0}, Lcom/htc/sdm/service/SDMCWAddSoundService$1;-><init>(Lcom/htc/sdm/service/SDMCWAddSoundService;)V

    invoke-static {v6, v4, v7, v8}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 150
    :goto_1
    iget v6, p0, Lcom/htc/sdm/service/SDMCWAddSoundService;->numMediaFileScanned:I

    if-eq v6, v1, :cond_2

    .line 154
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 162
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    return-void
.end method
