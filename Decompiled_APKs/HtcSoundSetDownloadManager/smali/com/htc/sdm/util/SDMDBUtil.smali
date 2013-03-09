.class public Lcom/htc/sdm/util/SDMDBUtil;
.super Ljava/lang/Object;
.source "SDMDBUtil.java"


# static fields
.field public static final DISABLE_PROPERTY:I = 0x0

.field public static final ENABLE_PROPERTY:I = 0x1

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final PREFIX:Ljava/lang/String; = "[SDMDBUtil] "

.field private static final SYSTEM_ALARM:Ljava/lang/String; = "/system/media/audio/alarms/"

.field private static final SYSTEM_ALARM_ID:Ljava/lang/String; = "Alarms"

.field private static final SYSTEM_NOTIFY:Ljava/lang/String; = "/system/media/audio/notifications/"

.field private static final SYSTEM_NOTIFY_ID:Ljava/lang/String; = "Notifications"

.field private static final SYSTEM_RINGTONE:Ljava/lang/String; = "/system/media/audio/ringtones/"

.field private static final SYSTEM_RINGTONE_ID:Ljava/lang/String; = "Ringtones"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddNewDataToSDMDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "ctx"
    .parameter "music"
    .parameter "title"
    .parameter "size"
    .parameter "date"
    .parameter "displayname"
    .parameter "UUID"
    .parameter "refType"

    .prologue
    .line 2029
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "external"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2034
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2035
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2036
    .local v2, values:Landroid/content/ContentValues;
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->downloaded:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2040
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->version:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_2

    .end local p4
    :goto_0
    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->size:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->cat:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->prelisten_url:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->file_url:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    invoke-static {p7}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2048
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2049
    .local v1, infoValues:Landroid/content/ContentValues;
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/htc/sdm/util/SDMDBUtil;->getPreferLang(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_3

    .end local p2
    :goto_1
    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->author:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "YOU"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->corp:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->description:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Created from SD Card"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    invoke-static {p7}, Lcom/htc/sdm/util/SDMDBUtil;->getInfoTableUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2057
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/htc/sdm/util/SDMUtil;->generateSDMStatusNotificationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2065
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #infoValues:Landroid/content/ContentValues;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_2
    return-void

    .line 2040
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v2       #values:Landroid/content/ContentValues;
    .restart local p2
    .restart local p4
    :cond_2
    const-string p4, ""

    goto/16 :goto_0

    .line 2051
    .end local p4
    .restart local v1       #infoValues:Landroid/content/ContentValues;
    :cond_3
    if-eqz p5, :cond_4

    move-object p2, p5

    goto :goto_1

    :cond_4
    const-string p2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2059
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #infoValues:Landroid/content/ContentValues;
    .end local v2           #values:Landroid/content/ContentValues;
    .end local p2
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public static AddNewSound(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 20
    .parameter "ctx"
    .parameter "music"
    .parameter "refType"

    .prologue
    .line 1960
    const/4 v15, 0x0

    .line 1961
    .local v15, NewSoundGUID:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1962
    .local v18, bSoundExist:Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1963
    .local v3, cr:Landroid/content/ContentResolver;
    const/16 v17, 0x0

    .line 1964
    .local v17, SDMCursor:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 1967
    .local v19, c:Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 1968
    .local v4, SoundTableUri:Landroid/net/Uri;
    packed-switch p2, :pswitch_data_0

    .line 2016
    :pswitch_0
    if-eqz v17, :cond_0

    .line 2017
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2018
    :cond_0
    if-eqz v19, :cond_1

    .line 2019
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object/from16 v16, v15

    .line 2022
    .end local v15           #NewSoundGUID:Ljava/lang/String;
    .local v16, NewSoundGUID:Ljava/lang/String;
    :goto_0
    return-object v16

    .line 1971
    .end local v16           #NewSoundGUID:Ljava/lang/String;
    .restart local v15       #NewSoundGUID:Ljava/lang/String;
    :pswitch_1
    :try_start_0
    sget-object v4, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE:Landroid/net/Uri;

    .line 1980
    :goto_1
    if-eqz v4, :cond_2

    .line 1982
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v7}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "=\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1983
    .local v6, where:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1984
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1986
    const/16 v18, 0x1

    .line 1987
    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1991
    .end local v6           #where:Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_4

    if-nez v18, :cond_4

    .line 1993
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1994
    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1996
    const-string v5, "title"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1997
    .local v9, title:Ljava/lang/String;
    const-string v5, "_size"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1998
    .local v10, size:Ljava/lang/String;
    const-string v5, "date_added"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1999
    .local v11, date:Ljava/lang/String;
    const-string v5, "_display_name"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2000
    .local v12, displayname:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sdm/util/SDMUtil;->CreateUUID()Ljava/lang/String;

    move-result-object v13

    .local v13, UUID:Ljava/lang/String;
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v14, p2

    .line 2002
    invoke-static/range {v7 .. v14}, Lcom/htc/sdm/util/SDMDBUtil;->AddNewDataToSDMDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2003
    move-object v15, v13

    .line 2006
    .end local v9           #title:Ljava/lang/String;
    .end local v10           #size:Ljava/lang/String;
    .end local v11           #date:Ljava/lang/String;
    .end local v12           #displayname:Ljava/lang/String;
    .end local v13           #UUID:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v5}, Lcom/htc/sdm/util/SDMDBUtil;->SetMusicProperty(Landroid/content/Context;Landroid/net/Uri;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2016
    :cond_4
    if-eqz v17, :cond_5

    .line 2017
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2018
    :cond_5
    if-eqz v19, :cond_6

    .line 2019
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_2
    move-object/from16 v16, v15

    .line 2022
    .end local v15           #NewSoundGUID:Ljava/lang/String;
    .restart local v16       #NewSoundGUID:Ljava/lang/String;
    goto/16 :goto_0

    .line 1974
    .end local v16           #NewSoundGUID:Ljava/lang/String;
    .restart local v15       #NewSoundGUID:Ljava/lang/String;
    :pswitch_2
    :try_start_1
    sget-object v4, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1975
    goto/16 :goto_1

    .line 2009
    :catch_0
    move-exception v5

    .line 2016
    if-eqz v17, :cond_7

    .line 2017
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2018
    :cond_7
    if-eqz v19, :cond_6

    .line 2019
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2016
    :catchall_0
    move-exception v5

    if-eqz v17, :cond_8

    .line 2017
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2018
    :cond_8
    if-eqz v19, :cond_9

    .line 2019
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v5

    .line 1968
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static ApplySound(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .parameter "context"
    .parameter "GUID"
    .parameter "srcType"
    .parameter "refType"
    .parameter "soundUri"

    .prologue
    .line 2462
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySound(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;)V

    .line 2463
    return-void
.end method

.method public static ApplySound(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;)V
    .locals 20
    .parameter "context"
    .parameter "GUID"
    .parameter "srcType"
    .parameter "refType"
    .parameter "soundUri"
    .parameter "force"

    .prologue
    .line 2467
    invoke-static/range {p3 .. p3}, Lcom/htc/sdm/util/SDMUtil;->RefType2ID(Ljava/lang/String;)I

    move-result v15

    .line 2468
    .local v15, refTypeID:I
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2471
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/htc/sdm/util/SDMUtil;->RefType2ID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v15, v1, v4}, Lcom/htc/sdm/util/SDMDBUtil;->getSoundID(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 2474
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 2476
    .local v9, avalibleSound:Ljava/lang/Boolean;
    const-string v2, "SoundSetPref"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 2477
    .local v14, pref:Landroid/content/SharedPreferences;
    if-nez v14, :cond_2

    .line 2646
    :goto_0
    return-void

    .line 2484
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 2485
    .local v13, isDRMSound:Ljava/lang/Boolean;
    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://drm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2487
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p4

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2488
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 2490
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2491
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 2506
    .end local v10           #c:Landroid/database/Cursor;
    :goto_1
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2511
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    move-object/from16 v0, p4

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2553
    :cond_3
    :goto_2
    new-instance v11, Lcom/htc/sdm/provider/SoundSetChildDAO;

    invoke-direct {v11}, Lcom/htc/sdm/provider/SoundSetChildDAO;-><init>()V

    .line 2554
    .local v11, childDAO:Lcom/htc/sdm/provider/SoundSetChildDAO;
    move-object/from16 v0, p1

    iput-object v0, v11, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    .line 2555
    invoke-static/range {p0 .. p0}, Lcom/htc/sdm/util/SDMUtil;->getCurSoundsetGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/sdm/provider/SoundSetChildDAO;->PARENT_GUID:Ljava/lang/String;

    .line 2556
    move-object/from16 v0, p3

    iput-object v0, v11, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    .line 2562
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v2, v0, :cond_4

    .line 2564
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v15, v1}, Lcom/htc/sdm/util/SDMDBUtil;->isSoundInDB(Landroid/content/Context;ILandroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2567
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v15, v1}, Lcom/htc/sdm/util/SDMDBUtil;->getSoundGUID(Landroid/content/Context;ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    .line 2596
    :cond_4
    :goto_3
    packed-switch v15, :pswitch_data_0

    .line 2642
    :goto_4
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 2643
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static {v0, v11, v1}, Lcom/htc/sdm/util/SDMDBUtil;->UpdateSoundSetChild(Landroid/content/Context;Lcom/htc/sdm/provider/SoundSetChildDAO;Ljava/lang/Boolean;)V

    .line 2645
    :cond_5
    invoke-static/range {p3 .. p3}, Lcom/htc/sdm/util/SDMUtil;->RefType2ID(Ljava/lang/String;)I

    move-result v3

    if-eqz p4, :cond_e

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/htc/sdm/util/SDMDBUtil;->setCurSoundUri(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2496
    .end local v11           #childDAO:Lcom/htc/sdm/provider/SoundSetChildDAO;
    .restart local v10       #c:Landroid/database/Cursor;
    :cond_6
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_1

    .line 2502
    .end local v10           #c:Landroid/database/Cursor;
    :cond_7
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_1

    .line 2513
    :catch_0
    move-exception v12

    .line 2515
    .local v12, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 2518
    const-string v19, ""

    .line 2519
    .local v19, string:Ljava/lang/String;
    packed-switch v15, :pswitch_data_1

    .line 2544
    :goto_6
    :pswitch_0
    if-eqz v19, :cond_3

    const-string v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2548
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    goto :goto_2

    .line 2522
    :pswitch_1
    const-string v2, "PrefDefRingtone"

    const-string v3, ""

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2523
    goto :goto_6

    .line 2525
    :pswitch_2
    const-string v2, "PrefDefNotification"

    const-string v3, ""

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2526
    goto :goto_6

    .line 2528
    :pswitch_3
    const-string v2, "PrefDefAlarm"

    const-string v3, ""

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2529
    goto :goto_6

    .line 2531
    :pswitch_4
    const-string v2, "PrefDefCalendar"

    const-string v3, ""

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2532
    goto :goto_6

    .line 2534
    :pswitch_5
    const-string v2, "PrefDefEmail"

    const-string v3, ""

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2535
    goto :goto_6

    .line 2537
    :pswitch_6
    const-string v2, "PrefDefMsg"

    const-string v3, ""

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2538
    goto :goto_6

    .line 2540
    :pswitch_7
    const-string v2, "PrefDefEmail"

    const-string v3, ""

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto :goto_6

    .line 2572
    .end local v12           #e:Ljava/lang/Exception;
    .end local v19           #string:Ljava/lang/String;
    .restart local v11       #childDAO:Lcom/htc/sdm/provider/SoundSetChildDAO;
    :cond_8
    new-instance v17, Lcom/htc/sdm/provider/SoundSetDAO;

    invoke-direct/range {v17 .. v17}, Lcom/htc/sdm/provider/SoundSetDAO;-><init>()V

    .line 2573
    .local v17, ssDAO:Lcom/htc/sdm/provider/SoundSetDAO;
    invoke-static {}, Lcom/htc/sdm/util/SDMUtil;->CreateUUID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    .line 2574
    const-string v2, "0"

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->cat:Ljava/lang/String;

    .line 2575
    const/4 v2, 0x2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->downloadStatus:I

    .line 2576
    const/4 v2, 0x4

    move-object/from16 v0, v17

    iput v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->srcType:I

    .line 2577
    move-object/from16 v0, v17

    iput v15, v0, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    .line 2578
    if-eqz p4, :cond_a

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_7
    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    .line 2580
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v15}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sdm/provider/SoundSetDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2581
    new-instance v18, Lcom/htc/sdm/provider/SoundSetInfoDAO;

    invoke-direct/range {v18 .. v18}, Lcom/htc/sdm/provider/SoundSetInfoDAO;-><init>()V

    .line 2582
    .local v18, ssInfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    const/16 v16, 0x0

    .line 2583
    .local v16, ring:Landroid/media/Ringtone;
    if-eqz p4, :cond_9

    .line 2584
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v16

    .line 2585
    :cond_9
    if-eqz v16, :cond_b

    .line 2586
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->name:Ljava/lang/String;

    .line 2589
    :goto_8
    const-string v2, "custom"

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->lang:Ljava/lang/String;

    .line 2590
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->GUID:Ljava/lang/String;

    .line 2591
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v15}, Lcom/htc/sdm/util/SDMDBUtil;->getInfoTableUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sdm/provider/SoundSetInfoDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2593
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    iput-object v2, v11, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    goto/16 :goto_3

    .line 2578
    .end local v16           #ring:Landroid/media/Ringtone;
    .end local v18           #ssInfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    :cond_a
    const-string v2, ""

    goto :goto_7

    .line 2588
    .restart local v16       #ring:Landroid/media/Ringtone;
    .restart local v18       #ssInfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    :cond_b
    const-string v2, "SystemSound"

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->name:Ljava/lang/String;

    goto :goto_8

    .line 2601
    .end local v16           #ring:Landroid/media/Ringtone;
    .end local v17           #ssDAO:Lcom/htc/sdm/provider/SoundSetDAO;
    .end local v18           #ssInfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    :pswitch_8
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    .line 2604
    .local v8, CursoundUri:Landroid/net/Uri;
    if-eqz v8, :cond_c

    .line 2607
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2611
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "PrefSetRingBySDM"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2630
    .end local v8           #CursoundUri:Landroid/net/Uri;
    :cond_c
    :goto_9
    :pswitch_9
    invoke-static/range {p3 .. p3}, Lcom/htc/sdm/util/SDMUtil;->RefType2RMType(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v2, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto/16 :goto_4

    .line 2617
    .restart local v8       #CursoundUri:Landroid/net/Uri;
    :cond_d
    :try_start_2
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "PrefSetRingBySDM"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    .line 2621
    .end local v8           #CursoundUri:Landroid/net/Uri;
    :catch_1
    move-exception v2

    goto :goto_9

    .line 2645
    :cond_e
    const-string v2, ""

    goto/16 :goto_5

    .line 2596
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 2519
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public static ApplySoundByService(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "GUID"
    .parameter "srcType"
    .parameter "refType"
    .parameter "soundUri"

    .prologue
    .line 2434
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/htc/sdm/service/SDMApplySoundService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2435
    .local v1, soundIntent:Landroid/content/Intent;
    const-string v2, "GUID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2436
    const-string v2, "srcType"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2437
    const-string v2, "refType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2438
    const-string v2, "soundUri"

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2441
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2449
    :goto_0
    return-void

    .line 2443
    :catch_0
    move-exception v0

    .line 2447
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static ApplySoundSet(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 13
    .parameter "context"
    .parameter "GUID"
    .parameter "isApplySoundService"

    .prologue
    const/4 v1, 0x0

    .line 2651
    const/4 v9, 0x1

    .line 2652
    .local v9, ret:Z
    if-nez p0, :cond_1

    .line 2770
    :cond_0
    :goto_0
    return v1

    .line 2659
    :cond_1
    if-eqz p1, :cond_0

    .line 2666
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2673
    const/4 v0, 0x0

    .line 2676
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2677
    if-eqz v0, :cond_0

    .line 2694
    const/4 v6, 0x0

    .line 2698
    .local v6, InfoCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2705
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    if-eqz v1, :cond_3

    .line 2711
    :cond_2
    :try_start_2
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2712
    .local v10, soundGUID:Ljava/lang/String;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2713
    .local v8, refType:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/sdm/util/SDMUtil;->RefType2ID(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1, v10}, Lcom/htc/sdm/util/SDMDBUtil;->GetSoundUri(Landroid/content/Context;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 2714
    .local v12, uri:Landroid/net/Uri;
    invoke-static {v8}, Lcom/htc/sdm/util/SDMUtil;->RefType2ID(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1, v10}, Lcom/htc/sdm/util/SDMDBUtil;->GetSoundSrcType(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2716
    .local v11, srcType:Ljava/lang/String;
    if-nez p2, :cond_5

    .line 2720
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v10, v1, v8, v12}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySound(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2753
    .end local v8           #refType:Ljava/lang/String;
    .end local v10           #soundGUID:Ljava/lang/String;
    .end local v11           #srcType:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    :goto_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v1

    if-nez v1, :cond_2

    .line 2765
    :cond_3
    if-eqz v6, :cond_4

    .line 2767
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    move v1, v9

    .line 2770
    goto/16 :goto_0

    .line 2684
    .end local v6           #InfoCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 2688
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2726
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v6       #InfoCursor:Landroid/database/Cursor;
    .restart local v8       #refType:Ljava/lang/String;
    .restart local v10       #soundGUID:Ljava/lang/String;
    .restart local v11       #srcType:Ljava/lang/String;
    .restart local v12       #uri:Landroid/net/Uri;
    :cond_5
    :try_start_4
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v10, v1, v8, v12}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySoundByService(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2730
    .end local v8           #refType:Ljava/lang/String;
    .end local v10           #soundGUID:Ljava/lang/String;
    .end local v11           #srcType:Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v7

    .line 2734
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 2735
    const/4 v9, 0x0

    goto :goto_1

    .line 2756
    .end local v7           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 2760
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2761
    const/4 v9, 0x0

    .line 2765
    if-eqz v6, :cond_4

    .line 2767
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2765
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    .line 2767
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method public static CheckDefaultRingtone(Landroid/content/Context;II)V
    .locals 11
    .parameter "context"
    .parameter "nRmType"
    .parameter "nCurrentListType"

    .prologue
    .line 3955
    :try_start_0
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 3956
    .local v1, defRingtone:Landroid/net/Uri;
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 3957
    .local v3, rt:Landroid/media/Ringtone;
    const/4 v5, 0x0

    .line 3958
    .local v5, rtSDMUri:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3960
    invoke-virtual {v3}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3962
    const/4 v7, 0x1

    invoke-static {p0, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 3963
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 3982
    :goto_0
    if-nez v5, :cond_0

    .line 3983
    invoke-virtual {v3}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 3984
    :cond_0
    if-eqz v1, :cond_1

    .line 3986
    invoke-static {p0, v1, p2}, Lcom/htc/sdm/util/SDMDBUtil;->AddNewSound(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 3987
    .local v0, NewSoundGUID:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3989
    const/4 v7, 0x2

    invoke-static {p2}, Lcom/htc/sdm/util/SDMUtil;->RefID2Type(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v0, v7, v8, v1}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySound(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V

    .line 3998
    .end local v0           #NewSoundGUID:Ljava/lang/String;
    .end local v1           #defRingtone:Landroid/net/Uri;
    .end local v3           #rt:Landroid/media/Ringtone;
    .end local v5           #rtSDMUri:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 3965
    .restart local v1       #defRingtone:Landroid/net/Uri;
    .restart local v3       #rt:Landroid/media/Ringtone;
    .restart local v5       #rtSDMUri:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3967
    const/4 v7, 0x2

    invoke-static {p0, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 3968
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    goto :goto_0

    .line 3970
    :cond_3
    invoke-virtual {v3}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3972
    const/4 v7, 0x4

    invoke-static {p0, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 3973
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    goto :goto_0

    .line 3977
    :cond_4
    invoke-virtual {v3}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3978
    .local v4, rtPath:[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x4

    aget-object v8, v4, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget-object v8, v4, v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3979
    .local v6, soundType:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sound://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3980
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/htc/sdm/util/SDMDBUtil;->findMediaStoreUriBySDMUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 3994
    .end local v1           #defRingtone:Landroid/net/Uri;
    .end local v3           #rt:Landroid/media/Ringtone;
    .end local v4           #rtPath:[Ljava/lang/String;
    .end local v5           #rtSDMUri:Ljava/lang/String;
    .end local v6           #soundType:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3996
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static CheckSDCardSound(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 2777
    :try_start_0
    invoke-static {p0}, Lcom/htc/sdm/util/SDMUtil;->getCurSoundsetGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 2778
    .local v6, GUID:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 2779
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 2783
    .local v7, InfoCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2787
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    .line 2793
    :cond_0
    :try_start_2
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2794
    .local v11, soundGUID:Ljava/lang/String;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2795
    .local v10, refType:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/sdm/util/SDMUtil;->RefType2ID(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1, v11}, Lcom/htc/sdm/util/SDMDBUtil;->GetSoundUri(Landroid/content/Context;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 2798
    .local v13, uri:Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2803
    invoke-static {v10}, Lcom/htc/sdm/util/SDMUtil;->RefType2ID(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1, v11}, Lcom/htc/sdm/util/SDMDBUtil;->GetSoundSrcType(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2804
    .local v12, srcType:Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v11, v1, v10, v13}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySound(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2813
    .end local v10           #refType:Ljava/lang/String;
    .end local v11           #soundGUID:Ljava/lang/String;
    .end local v12           #srcType:Ljava/lang/String;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    if-nez v1, :cond_0

    .line 2824
    :cond_2
    if-eqz v7, :cond_3

    .line 2826
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2836
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #GUID:Ljava/lang/String;
    .end local v7           #InfoCursor:Landroid/database/Cursor;
    :cond_3
    :goto_1
    return-void

    .line 2807
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v6       #GUID:Ljava/lang/String;
    .restart local v7       #InfoCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 2811
    .local v8, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 2816
    .end local v8           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 2820
    .restart local v8       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2824
    if-eqz v7, :cond_3

    .line 2826
    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 2830
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #GUID:Ljava/lang/String;
    .end local v7           #InfoCursor:Landroid/database/Cursor;
    .end local v8           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v9

    .line 2834
    .local v9, excp:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2824
    .end local v9           #excp:Ljava/lang/Exception;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v6       #GUID:Ljava/lang/String;
    .restart local v7       #InfoCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 2826
    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
.end method

.method public static DuplicateSoundSetChildbyParentGUID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "parentGUID"
    .parameter "newParentGUID"

    .prologue
    .line 2140
    const/4 v6, 0x0

    .line 2141
    .local v6, InfoCursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2143
    .local v9, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-nez v9, :cond_1

    .line 2195
    :cond_0
    :goto_0
    return-void

    .line 2148
    :cond_1
    new-instance v7, Lcom/htc/sdm/provider/SoundSetChildDAO;

    invoke-direct {v7}, Lcom/htc/sdm/provider/SoundSetChildDAO;-><init>()V

    .line 2150
    .local v7, childDAO:Lcom/htc/sdm/provider/SoundSetChildDAO;
    if-eqz v7, :cond_0

    .line 2157
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2164
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2168
    :cond_2
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    .line 2169
    iput-object p2, v7, Lcom/htc/sdm/provider/SoundSetChildDAO;->PARENT_GUID:Ljava/lang/String;

    .line 2170
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    .line 2171
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/htc/sdm/provider/SoundSetChildDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2172
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 2176
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sdm.provider.SDMProvider"

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2190
    :cond_3
    :goto_1
    if-eqz v6, :cond_0

    .line 2192
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2178
    :catch_0
    move-exception v8

    .line 2180
    .local v8, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2190
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 2192
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 2182
    :catch_1
    move-exception v8

    .line 2184
    .local v8, e:Landroid/content/OperationApplicationException;
    :try_start_3
    invoke-virtual {v8}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static GetSoundSrcType(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "refTypeID"
    .parameter "GUID"

    .prologue
    .line 2244
    const/4 v6, 0x0

    .line 2246
    .local v6, InfoCursor:Landroid/database/Cursor;
    invoke-static {p1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 2248
    .local v1, tableUri:Landroid/net/Uri;
    const-string v7, "4"

    .line 2251
    .local v7, ret:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2258
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2260
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 2270
    :cond_0
    if-eqz v6, :cond_1

    .line 2272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2275
    :cond_1
    return-object v7

    .line 2270
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static GetSoundUri(Landroid/content/Context;ILjava/lang/String;)Landroid/net/Uri;
    .locals 10
    .parameter "context"
    .parameter "refTypeID"
    .parameter "GUID"

    .prologue
    const/4 v9, 0x1

    .line 2200
    const/4 v6, 0x0

    .line 2201
    .local v6, InfoCursor:Landroid/database/Cursor;
    invoke-static {p1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 2202
    .local v1, tableUri:Landroid/net/Uri;
    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2205
    .local v7, ret:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2212
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2214
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2215
    .local v8, stringUri:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 2217
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2218
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2221
    :cond_0
    invoke-static {p1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, p1, p2, v3}, Lcom/htc/sdm/util/SDMDBUtil;->getSoundID(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 2233
    .end local v8           #stringUri:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 2235
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2238
    :cond_2
    return-object v7

    .line 2233
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2235
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static IsCustomSoundSetNameExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    .line 2108
    const/4 v6, 0x0

    .line 2109
    .local v6, InfoCursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 2110
    .local v7, bNameExist:Z
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 2114
    .local v8, sEscapeName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_INFO:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2121
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 2123
    const/4 v7, 0x1

    .line 2128
    :cond_0
    if-eqz v6, :cond_1

    .line 2130
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2133
    :cond_1
    return v7

    .line 2128
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2130
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static QueryCurSound(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "refTypeID"

    .prologue
    .line 637
    const-string v1, ""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 638
    .local v0, ret:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 650
    invoke-static {p0, p1}, Lcom/htc/sdm/util/SDMDBUtil;->getCurSoundUri(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 654
    :goto_0
    if-nez v0, :cond_0

    .line 655
    const-string v1, ""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 657
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 641
    :pswitch_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 642
    goto :goto_0

    .line 644
    :pswitch_1
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 645
    goto :goto_0

    .line 647
    :pswitch_2
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 648
    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static SetMusicProperty(Landroid/content/Context;Landroid/net/Uri;II)V
    .locals 4
    .parameter "ctx"
    .parameter "music"
    .parameter "refType"
    .parameter "Property"

    .prologue
    .line 2071
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2072
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 2073
    .local v1, infoValues:Landroid/content/ContentValues;
    packed-switch p2, :pswitch_data_0

    .line 2103
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #infoValues:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 2076
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #infoValues:Landroid/content/ContentValues;
    :pswitch_0
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #infoValues:Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2077
    .restart local v1       #infoValues:Landroid/content/ContentValues;
    const-string v2, "is_ringtone"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2078
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2098
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #infoValues:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2081
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #infoValues:Landroid/content/ContentValues;
    :pswitch_1
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #infoValues:Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2082
    .restart local v1       #infoValues:Landroid/content/ContentValues;
    const-string v2, "is_alarm"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2083
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2092
    :pswitch_2
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #infoValues:Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2093
    .restart local v1       #infoValues:Landroid/content/ContentValues;
    const-string v2, "is_notification"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2094
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2073
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static UpdateSoundSetChild(Landroid/content/Context;Lcom/htc/sdm/provider/SoundSetChildDAO;)V
    .locals 1
    .parameter "context"
    .parameter "childDAO"

    .prologue
    .line 2279
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/htc/sdm/util/SDMDBUtil;->UpdateSoundSetChild(Landroid/content/Context;Lcom/htc/sdm/provider/SoundSetChildDAO;Ljava/lang/Boolean;)V

    .line 2280
    return-void
.end method

.method public static UpdateSoundSetChild(Landroid/content/Context;Lcom/htc/sdm/provider/SoundSetChildDAO;Ljava/lang/Boolean;)V
    .locals 10
    .parameter "context"
    .parameter "childDAO"
    .parameter "force"

    .prologue
    .line 2285
    const/4 v6, 0x0

    .line 2286
    .local v6, InfoCursor:Landroid/database/Cursor;
    if-nez p1, :cond_1

    .line 2342
    :cond_0
    :goto_0
    return-void

    .line 2293
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/htc/sdm/provider/SoundSetChildDAO;->PARENT_GUID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2301
    if-eqz v6, :cond_2

    .line 2303
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2305
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->_id:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2306
    .local v7, _id:I
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2307
    .local v9, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/sdm/provider/SoundSetChildDAO;->PARENT_GUID:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2311
    .local v8, uriWithID:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2337
    .end local v7           #_id:I
    .end local v8           #uriWithID:Ljava/lang/String;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    .line 2339
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2317
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2319
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2320
    .restart local v9       #values:Landroid/content/ContentValues;
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/sdm/provider/SoundSetChildDAO;->PARENT_GUID:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2337
    .end local v9           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 2339
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static _loadListsFromDB(Landroid/content/Context;Ljava/lang/String;IIIZZ)Ljava/util/ArrayList;
    .locals 19
    .parameter "context"
    .parameter "version"
    .parameter "nId"
    .parameter "srcType"
    .parameter "downloadStatus"
    .parameter "deleteMode"
    .parameter "checkSDCaerd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IIIZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sdm/SoundSetParcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1340
    const/4 v5, 0x0

    .line 1342
    .local v5, where:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->version:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1349
    :cond_0
    if-eqz p4, :cond_1

    .line 1351
    if-eqz v5, :cond_9

    .line 1353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->downloaded:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1362
    :cond_1
    :goto_0
    packed-switch p3, :pswitch_data_0

    .line 1417
    :goto_1
    if-eqz p5, :cond_3

    .line 1454
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_e

    .line 1456
    invoke-static/range {p0 .. p0}, Lcom/htc/sdm/util/SDMUtil;->getCurSoundsetGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 1457
    .local v15, mStrCurSelGUID:Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 1460
    if-eqz v5, :cond_2

    .line 1462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1464
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<>\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1485
    .end local v15           #mStrCurSelGUID:Ljava/lang/String;
    :cond_3
    :goto_2
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1486
    .local v17, rets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundSetParcelable;>;"
    const/4 v12, 0x0

    .line 1487
    .local v12, ListCursor:Landroid/database/Cursor;
    invoke-static/range {p2 .. p2}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 1488
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_8

    .line 1492
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1499
    if-eqz v12, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1503
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v12, v1}, Lcom/htc/sdm/util/SDMDBUtil;->cursor2Parcelable(Landroid/content/Context;Landroid/database/Cursor;I)Lcom/htc/sdm/SoundSetParcelable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 1509
    .local v16, parcelable:Lcom/htc/sdm/SoundSetParcelable;
    if-eqz v16, :cond_6

    .line 1512
    const/4 v2, 0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_13

    .line 1514
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v2, v0, :cond_12

    .line 1516
    const/4 v13, 0x0

    .line 1520
    .local v13, c:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v7

    .line 1521
    .local v7, LocalUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1533
    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 1535
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1544
    :cond_5
    if-eqz v13, :cond_6

    .line 1546
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1563
    .end local v7           #LocalUri:Landroid/net/Uri;
    .end local v13           #c:Landroid/database/Cursor;
    :cond_6
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 1568
    .end local v16           #parcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_7
    if-eqz v12, :cond_8

    .line 1570
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1575
    :cond_8
    return-object v17

    .line 1358
    .end local v3           #uri:Landroid/net/Uri;
    .end local v12           #ListCursor:Landroid/database/Cursor;
    .end local v17           #rets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundSetParcelable;>;"
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->downloaded:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 1372
    :pswitch_0
    if-eqz v5, :cond_a

    .line 1374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 1379
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1381
    goto/16 :goto_1

    .line 1383
    :pswitch_1
    if-eqz v5, :cond_b

    .line 1385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\')"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 1390
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\')"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1392
    goto/16 :goto_1

    .line 1394
    :pswitch_2
    if-eqz v5, :cond_c

    .line 1396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\')"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 1401
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\')"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1403
    goto/16 :goto_1

    .line 1405
    :pswitch_3
    if-eqz v5, :cond_d

    .line 1407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\')"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 1412
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\')"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 1469
    :cond_e
    invoke-static/range {p0 .. p0}, Lcom/htc/sdm/util/SDMDBUtil;->listAllValidSoundGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 1470
    .local v18, soundGUIDList:Ljava/lang/String;
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1472
    if-eqz v5, :cond_f

    .line 1474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1476
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " NOT IN ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 1538
    .end local v18           #soundGUIDList:Ljava/lang/String;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v12       #ListCursor:Landroid/database/Cursor;
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v16       #parcelable:Lcom/htc/sdm/SoundSetParcelable;
    .restart local v17       #rets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundSetParcelable;>;"
    :catch_0
    move-exception v14

    .line 1540
    .local v14, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1544
    if-eqz v13, :cond_6

    .line 1546
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 1568
    .end local v13           #c:Landroid/database/Cursor;
    .end local v14           #e:Ljava/lang/Exception;
    .end local v16           #parcelable:Lcom/htc/sdm/SoundSetParcelable;
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_10

    .line 1570
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v2

    .line 1544
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v16       #parcelable:Lcom/htc/sdm/SoundSetParcelable;
    :catchall_1
    move-exception v2

    if-eqz v13, :cond_11

    .line 1546
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v2

    .line 1552
    .end local v13           #c:Landroid/database/Cursor;
    :cond_12
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1558
    :cond_13
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 1362
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static _updateMediaFlag(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "listType"

    .prologue
    .line 4198
    const/4 v1, 0x0

    .line 4199
    .local v1, tableUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 4202
    .local v6, cursor:Landroid/database/Cursor;
    packed-switch p1, :pswitch_data_0

    .line 4237
    if-eqz v6, :cond_0

    .line 4238
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4240
    :cond_0
    :goto_0
    return-void

    .line 4205
    :pswitch_0
    :try_start_0
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE:Landroid/net/Uri;

    .line 4217
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4218
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4221
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4226
    :cond_1
    const-string v0, "soundUri"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 4227
    .local v8, soundUri:Landroid/net/Uri;
    const/4 v0, 0x1

    invoke-static {p0, v8, p1, v0}, Lcom/htc/sdm/util/SDMDBUtil;->SetMusicProperty(Landroid/content/Context;Landroid/net/Uri;II)V

    .line 4228
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 4237
    .end local v8           #soundUri:Landroid/net/Uri;
    :cond_2
    if-eqz v6, :cond_0

    .line 4238
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4208
    .end local v3           #where:Ljava/lang/String;
    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM:Landroid/net/Uri;

    .line 4209
    goto :goto_1

    .line 4211
    :pswitch_2
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4212
    goto :goto_1

    .line 4231
    :catch_0
    move-exception v7

    .line 4233
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4237
    if-eqz v6, :cond_0

    .line 4238
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4237
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 4238
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 4202
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static cleanListData(Landroid/content/Context;ILjava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "listType"
    .parameter "lang"

    .prologue
    const/4 v10, 0x1

    .line 3048
    const/4 v1, 0x0

    .line 3050
    .local v1, uriList:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 3066
    :goto_0
    const/4 v6, 0x0

    .line 3070
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3071
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3072
    .local v3, queryStr:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3073
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->downloaded:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3075
    if-eq p1, v10, :cond_0

    .line 3077
    invoke-static {p0}, Lcom/htc/sdm/util/SDMDBUtil;->listRefSoundGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 3078
    .local v9, soundGUIDList:Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 3080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " NOT IN ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3086
    .end local v9           #soundGUIDList:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3095
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3097
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v8

    .line 3098
    .local v8, guidName:Ljava/lang/String;
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3100
    .local v7, guid:Ljava/lang/String;
    if-ne v10, p1, :cond_2

    .line 3104
    :cond_1
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3106
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_DEF_SOUNDSET_CHILD:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3109
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3112
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3117
    .end local v7           #guid:Ljava/lang/String;
    .end local v8           #guidName:Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 3119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3122
    :cond_4
    return-void

    .line 3053
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v3           #queryStr:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :pswitch_0
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET:Landroid/net/Uri;

    .line 3054
    goto/16 :goto_0

    .line 3056
    :pswitch_1
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE:Landroid/net/Uri;

    .line 3057
    goto/16 :goto_0

    .line 3059
    :pswitch_2
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION:Landroid/net/Uri;

    .line 3060
    goto/16 :goto_0

    .line 3062
    :pswitch_3
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM:Landroid/net/Uri;

    goto/16 :goto_0

    .line 3117
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_5

    .line 3119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    .line 3050
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static cursor2CategoryParcelable(Landroid/content/Context;Landroid/database/Cursor;)Lcom/htc/sdm/SoundSetCategoryGroupParcelable;
    .locals 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 63
    const/4 v2, 0x0

    .line 65
    .local v2, cgParcel:Lcom/htc/sdm/SoundSetCategoryGroupParcelable;
    if-eqz p1, :cond_0

    .line 69
    const-string v3, "cat"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, cat:Ljava/lang/String;
    const-string v3, "cat_counter"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 71
    .local v1, cat_counter:I
    new-instance v2, Lcom/htc/sdm/SoundSetCategoryGroupParcelable;

    .end local v2           #cgParcel:Lcom/htc/sdm/SoundSetCategoryGroupParcelable;
    invoke-direct {v2, v0, v1}, Lcom/htc/sdm/SoundSetCategoryGroupParcelable;-><init>(Ljava/lang/String;I)V

    .line 73
    .end local v0           #cat:Ljava/lang/String;
    .end local v1           #cat_counter:I
    .restart local v2       #cgParcel:Lcom/htc/sdm/SoundSetCategoryGroupParcelable;
    :cond_0
    return-object v2
.end method

.method public static cursor2Parcelable(Landroid/content/Context;Landroid/database/Cursor;I)Lcom/htc/sdm/SoundSetParcelable;
    .locals 80
    .parameter "context"
    .parameter "cursor"
    .parameter "nType"

    .prologue
    .line 79
    const/4 v14, 0x0

    .line 81
    .local v14, ssParcel:Lcom/htc/sdm/SoundSetParcelable;
    if-eqz p1, :cond_4

    .line 83
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v78

    .line 84
    .local v78, authorize:Ljava/lang/Byte;
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->_id:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 85
    .local v46, _id:J
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 86
    .local v17, GUID:Ljava/lang/String;
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->version:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 87
    .local v18, version:Ljava/lang/String;
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->size:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 88
    .local v19, size:Ljava/lang/String;
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->cat:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 89
    .local v20, cat:Ljava/lang/String;
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->prelisten_url:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 90
    .local v21, preUrl:Ljava/lang/String;
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->file_url:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 91
    .local v22, url:Ljava/lang/String;
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->auth_need:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v79

    .line 93
    .local v79, tmp:Ljava/lang/String;
    if-eqz v79, :cond_0

    .line 94
    invoke-static/range {v79 .. v79}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v78

    .line 96
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v46

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    .line 97
    .local v24, thisUri:Ljava/lang/String;
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 98
    .local v25, localFileUri:Ljava/lang/String;
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 99
    .local v26, srcType:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/htc/sdm/util/SDMUtil;->RefID2Type(I)Ljava/lang/String;

    move-result-object v27

    .line 100
    .local v27, refType:Ljava/lang/String;
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->reldate:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 101
    .local v28, reldate:Ljava/lang/String;
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->rating:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 102
    .local v29, rating:J
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->rating_count:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 103
    .local v31, rating_count:J
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->download_count:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 104
    .local v33, download_count:J
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->comment_count:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 105
    .local v35, comment_count:J
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->likeCount:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 106
    .local v37, likeCount:J
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->downloaded:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    .line 107
    .local v43, DownloadStatus:I
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->locale:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 109
    .local v44, lang:Ljava/lang/String;
    const-string v39, ""

    .line 110
    .local v39, name:Ljava/lang/String;
    const-string v40, ""

    .line 111
    .local v40, author:Ljava/lang/String;
    const-string v41, ""

    .line 112
    .local v41, corp:Ljava/lang/String;
    const-string v42, ""

    .line 116
    .local v42, description:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/htc/sdm/util/SDMDBUtil;->getPreferLang(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v77

    .line 118
    .local v77, Lang:Ljava/lang/String;
    const/16 v76, 0x0

    .line 121
    .local v76, InfoCursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 122
    .local v13, queryBase:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v77

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "custom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 129
    .local v9, enWhere:Ljava/lang/String;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x62

    if-ne v2, v3, :cond_1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'en\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 137
    :cond_1
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_INFO:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 143
    if-eqz v76, :cond_2

    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x62

    if-ne v2, v3, :cond_2

    .line 145
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_INFO:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 151
    :cond_2
    if-eqz v76, :cond_3

    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 153
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_INFO:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v14           #ssParcel:Lcom/htc/sdm/SoundSetParcelable;
    move-result-object v76

    .line 232
    :cond_3
    :goto_0
    if-eqz v76, :cond_c

    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_c

    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 235
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v76

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v76

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 236
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->author:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v76

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v76

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 237
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->corp:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v76

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v76

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 238
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->description:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v76

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v76

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 240
    new-instance v14, Lcom/htc/sdm/SoundSetParcelable;

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Byte;->byteValue()B

    move-result v23

    move-wide/from16 v15, v46

    invoke-direct/range {v14 .. v44}, Lcom/htc/sdm/SoundSetParcelable;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .restart local v14       #ssParcel:Lcom/htc/sdm/SoundSetParcelable;
    :goto_1
    if-eqz v76, :cond_4

    .line 306
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 311
    .end local v5           #where:Ljava/lang/String;
    .end local v9           #enWhere:Ljava/lang/String;
    .end local v13           #queryBase:Ljava/lang/String;
    .end local v17           #GUID:Ljava/lang/String;
    .end local v18           #version:Ljava/lang/String;
    .end local v19           #size:Ljava/lang/String;
    .end local v20           #cat:Ljava/lang/String;
    .end local v21           #preUrl:Ljava/lang/String;
    .end local v22           #url:Ljava/lang/String;
    .end local v24           #thisUri:Ljava/lang/String;
    .end local v25           #localFileUri:Ljava/lang/String;
    .end local v26           #srcType:Ljava/lang/String;
    .end local v27           #refType:Ljava/lang/String;
    .end local v28           #reldate:Ljava/lang/String;
    .end local v29           #rating:J
    .end local v31           #rating_count:J
    .end local v33           #download_count:J
    .end local v35           #comment_count:J
    .end local v37           #likeCount:J
    .end local v39           #name:Ljava/lang/String;
    .end local v40           #author:Ljava/lang/String;
    .end local v41           #corp:Ljava/lang/String;
    .end local v42           #description:Ljava/lang/String;
    .end local v43           #DownloadStatus:I
    .end local v44           #lang:Ljava/lang/String;
    .end local v46           #_id:J
    .end local v76           #InfoCursor:Landroid/database/Cursor;
    .end local v77           #Lang:Ljava/lang/String;
    .end local v78           #authorize:Ljava/lang/Byte;
    .end local v79           #tmp:Ljava/lang/String;
    :cond_4
    return-object v14

    .line 159
    .restart local v5       #where:Ljava/lang/String;
    .restart local v9       #enWhere:Ljava/lang/String;
    .restart local v13       #queryBase:Ljava/lang/String;
    .restart local v17       #GUID:Ljava/lang/String;
    .restart local v18       #version:Ljava/lang/String;
    .restart local v19       #size:Ljava/lang/String;
    .restart local v20       #cat:Ljava/lang/String;
    .restart local v21       #preUrl:Ljava/lang/String;
    .restart local v22       #url:Ljava/lang/String;
    .restart local v24       #thisUri:Ljava/lang/String;
    .restart local v25       #localFileUri:Ljava/lang/String;
    .restart local v26       #srcType:Ljava/lang/String;
    .restart local v27       #refType:Ljava/lang/String;
    .restart local v28       #reldate:Ljava/lang/String;
    .restart local v29       #rating:J
    .restart local v31       #rating_count:J
    .restart local v33       #download_count:J
    .restart local v35       #comment_count:J
    .restart local v37       #likeCount:J
    .restart local v39       #name:Ljava/lang/String;
    .restart local v40       #author:Ljava/lang/String;
    .restart local v41       #corp:Ljava/lang/String;
    .restart local v42       #description:Ljava/lang/String;
    .restart local v43       #DownloadStatus:I
    .restart local v44       #lang:Ljava/lang/String;
    .restart local v46       #_id:J
    .restart local v76       #InfoCursor:Landroid/database/Cursor;
    .restart local v77       #Lang:Ljava/lang/String;
    .restart local v78       #authorize:Ljava/lang/Byte;
    .restart local v79       #tmp:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    .line 161
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE_INFO:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 165
    if-eqz v76, :cond_6

    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x62

    if-ne v2, v3, :cond_6

    .line 167
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE_INFO:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 173
    :cond_6
    if-eqz v76, :cond_3

    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 175
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE_INFO:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v14           #ssParcel:Lcom/htc/sdm/SoundSetParcelable;
    move-result-object v76

    goto/16 :goto_0

    .line 181
    .restart local v14       #ssParcel:Lcom/htc/sdm/SoundSetParcelable;
    :cond_7
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v0, v2, :cond_9

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM_INFO:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 187
    if-eqz v76, :cond_8

    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_8

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x62

    if-ne v2, v3, :cond_8

    .line 189
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM_INFO:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 195
    :cond_8
    if-eqz v76, :cond_3

    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 197
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 198
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM_INFO:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v14           #ssParcel:Lcom/htc/sdm/SoundSetParcelable;
    move-result-object v76

    goto/16 :goto_0

    .line 203
    .restart local v14       #ssParcel:Lcom/htc/sdm/SoundSetParcelable;
    :cond_9
    const/4 v2, 0x3

    move/from16 v0, p2

    if-eq v0, v2, :cond_a

    const/4 v2, 0x5

    move/from16 v0, p2

    if-eq v0, v2, :cond_a

    const/4 v2, 0x7

    move/from16 v0, p2

    if-eq v0, v2, :cond_a

    const/4 v2, 0x6

    move/from16 v0, p2

    if-eq v0, v2, :cond_a

    const/16 v2, 0x8

    move/from16 v0, p2

    if-eq v0, v2, :cond_a

    const/16 v2, 0x9

    move/from16 v0, p2

    if-eq v0, v2, :cond_a

    const/16 v2, 0xa

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 211
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION_INFO:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 215
    if-eqz v76, :cond_b

    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_b

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x62

    if-ne v2, v3, :cond_b

    .line 217
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 218
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION_INFO:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 223
    :cond_b
    if-eqz v76, :cond_3

    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 225
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION_INFO:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v14           #ssParcel:Lcom/htc/sdm/SoundSetParcelable;
    move-result-object v76

    goto/16 :goto_0

    .line 270
    :cond_c
    const-string v39, ""

    .line 271
    const-string v40, "HTC"

    .line 272
    const-string v41, ""

    .line 273
    const-string v42, ""

    .line 274
    new-instance v14, Lcom/htc/sdm/SoundSetParcelable;

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Byte;->byteValue()B

    move-result v54

    const-string v75, ""

    move-object/from16 v45, v14

    move-object/from16 v48, v17

    move-object/from16 v49, v18

    move-object/from16 v50, v19

    move-object/from16 v51, v20

    move-object/from16 v52, v21

    move-object/from16 v53, v22

    move-object/from16 v55, v24

    move-object/from16 v56, v25

    move-object/from16 v57, v26

    move-object/from16 v58, v27

    move-object/from16 v59, v28

    move-wide/from16 v60, v29

    move-wide/from16 v62, v31

    move-wide/from16 v64, v33

    move-wide/from16 v66, v35

    move-wide/from16 v68, v37

    move-object/from16 v70, v39

    move-object/from16 v71, v40

    move-object/from16 v72, v41

    move-object/from16 v73, v42

    move/from16 v74, v43

    invoke-direct/range {v45 .. v75}, Lcom/htc/sdm/SoundSetParcelable;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v14       #ssParcel:Lcom/htc/sdm/SoundSetParcelable;
    goto/16 :goto_1

    .line 304
    .end local v5           #where:Ljava/lang/String;
    .end local v9           #enWhere:Ljava/lang/String;
    .end local v13           #queryBase:Ljava/lang/String;
    .end local v14           #ssParcel:Lcom/htc/sdm/SoundSetParcelable;
    :catchall_0
    move-exception v2

    if-eqz v76, :cond_d

    .line 306
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2
.end method

.method private static cursor2SoundParcelable(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/htc/sdm/SoundParcelable;
    .locals 16
    .parameter "context"
    .parameter "cursor"
    .parameter "refType"

    .prologue
    .line 317
    const/4 v1, 0x0

    .line 318
    .local v1, ssParcel:Lcom/htc/sdm/SoundParcelable;
    if-eqz p1, :cond_1

    .line 320
    sget-object v9, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->_id:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v9}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 321
    .local v2, _id:J
    sget-object v9, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v9}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, GUID:Ljava/lang/String;
    sget-object v9, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->prelisten_url:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v9}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, preUrl:Ljava/lang/String;
    sget-object v9, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->file_url:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v9}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 324
    .local v6, url:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/htc/sdm/util/SDMUtil;->RefType2ID(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, thisUri:Ljava/lang/String;
    sget-object v9, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v9}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 326
    .local v8, dlDbUri:Ljava/lang/String;
    sget-object v9, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->downloaded:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v9}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 328
    .local v14, dlStatus:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    .line 329
    .local v13, authorize:Ljava/lang/Byte;
    sget-object v9, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->auth_need:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v9}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 331
    .local v15, tmp:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 332
    invoke-static {v15}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    .line 335
    :cond_0
    new-instance v1, Lcom/htc/sdm/SoundParcelable;

    .end local v1           #ssParcel:Lcom/htc/sdm/SoundParcelable;
    const/4 v10, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v12

    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v12}, Lcom/htc/sdm/SoundParcelable;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IB)V

    .line 352
    .end local v2           #_id:J
    .end local v4           #GUID:Ljava/lang/String;
    .end local v5           #preUrl:Ljava/lang/String;
    .end local v6           #url:Ljava/lang/String;
    .end local v7           #thisUri:Ljava/lang/String;
    .end local v8           #dlDbUri:Ljava/lang/String;
    .end local v13           #authorize:Ljava/lang/Byte;
    .end local v14           #dlStatus:Ljava/lang/String;
    .end local v15           #tmp:Ljava/lang/String;
    .restart local v1       #ssParcel:Lcom/htc/sdm/SoundParcelable;
    :cond_1
    return-object v1
.end method

.method public static findMediaStoreUriBySDMUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 13
    .parameter "ctx"
    .parameter "SDMUri"

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 3126
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3225
    :cond_0
    :goto_0
    return-object v6

    .line 3129
    :cond_1
    const/4 v6, 0x0

    .line 3131
    .local v6, MediaStoreUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3133
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 3135
    .local v8, host:Ljava/lang/String;
    const-string v0, "system"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3137
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    .line 3138
    .local v10, pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3140
    .local v3, where:Ljava/lang/String;
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Ringtones"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data = \'/system/media/audio/ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3159
    :goto_1
    const/4 v7, 0x0

    .line 3162
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3164
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3166
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3167
    .local v9, id:Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 3172
    .end local v9           #id:Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_0

    .line 3173
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3144
    .end local v7           #c:Landroid/database/Cursor;
    :cond_3
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Alarms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data = \'/system/media/audio/alarms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 3148
    :cond_4
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Notifications"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data = \'/system/media/audio/notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 3155
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data = \'/system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 3172
    .restart local v7       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 3173
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 3176
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v10           #pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const-string v0, "sdcard"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3178
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v11

    .line 3179
    .local v11, soundPath:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3182
    .restart local v3       #where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 3185
    .restart local v7       #c:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3187
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3189
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3190
    .restart local v9       #id:Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 3195
    .end local v9           #id:Ljava/lang/String;
    :cond_8
    if-eqz v7, :cond_0

    .line 3196
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3195
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_9

    .line 3196
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    .line 3200
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v11           #soundPath:Ljava/lang/String;
    :cond_a
    const-string v0, "data"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3202
    const/4 v3, 0x0

    .line 3203
    .restart local v3       #where:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data = \'/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3205
    const/4 v7, 0x0

    .line 3208
    .restart local v7       #c:Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3210
    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3212
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3213
    .restart local v9       #id:Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 3218
    .end local v9           #id:Ljava/lang/String;
    :cond_b
    if-eqz v7, :cond_0

    .line 3219
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3218
    :catchall_2
    move-exception v0

    if-eqz v7, :cond_c

    .line 3219
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0
.end method

.method public static getAllUri(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4169
    .local v0, listArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE:Landroid/net/Uri;

    invoke-static {p0, v1, v0}, Lcom/htc/sdm/util/SDMDBUtil;->getUris(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 4170
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION:Landroid/net/Uri;

    invoke-static {p0, v1, v0}, Lcom/htc/sdm/util/SDMDBUtil;->getUris(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 4171
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM:Landroid/net/Uri;

    invoke-static {p0, v1, v0}, Lcom/htc/sdm/util/SDMDBUtil;->getUris(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 4172
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SETTING:Landroid/net/Uri;

    invoke-static {p0, v1, v0}, Lcom/htc/sdm/util/SDMDBUtil;->getUris(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 4173
    return-object v0
.end method

.method private static getCategoryUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "nId"

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, uri:Landroid/net/Uri;
    packed-switch p0, :pswitch_data_0

    .line 382
    :goto_0
    return-object v0

    .line 363
    :pswitch_0
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE_CAT:Landroid/net/Uri;

    .line 364
    goto :goto_0

    .line 372
    :pswitch_1
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION_CAT:Landroid/net/Uri;

    .line 373
    goto :goto_0

    .line 375
    :pswitch_2
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM_CAT:Landroid/net/Uri;

    .line 376
    goto :goto_0

    .line 378
    :pswitch_3
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CAT:Landroid/net/Uri;

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getCurSoundUri(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "refTypeID"

    .prologue
    .line 499
    const/4 v6, 0x0

    .line 500
    .local v6, c:Landroid/database/Cursor;
    const-string v7, ""

    .line 501
    .local v7, strDB:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/htc/sdm/util/SDMUtil;->RefID2Type(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, selectionWithRefType:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SETTING:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 505
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 513
    :cond_0
    if-eqz v6, :cond_1

    .line 515
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 552
    :cond_1
    return-object v7

    .line 513
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 515
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getDefaultNotifyGUID(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sdm/SoundParcelable;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3934
    .local p0, mSoundChildList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundParcelable;>;"
    const/4 v1, 0x0

    .line 3935
    .local v1, i:I
    const/4 v0, 0x0

    .line 3936
    .local v0, defaultNotifyGUID:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 3938
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3940
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sdm/SoundParcelable;

    invoke-virtual {v2}, Lcom/htc/sdm/SoundParcelable;->getRefType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S_Notify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3942
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sdm/SoundParcelable;

    invoke-virtual {v2}, Lcom/htc/sdm/SoundParcelable;->getGUID()Ljava/lang/String;

    move-result-object v0

    .line 3947
    :cond_0
    return-object v0

    .line 3938
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "drmuri"

    .prologue
    .line 4002
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "content_offset"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "content_id"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "content_boundary_offset"

    aput-object v1, v2, v0

    .line 4009
    .local v2, cols:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 4010
    .local v11, drmcur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 4012
    .local v10, drmFileToPlay:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 4013
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4015
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 4016
    const-string v0, "_data"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4017
    .local v9, data:Ljava/lang/String;
    const-string v0, "content_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4018
    .local v7, contentOffset:I
    const-string v0, "content_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4019
    .local v8, contentid:Ljava/lang/String;
    const-string v0, "content_boundary_offset"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4020
    .local v6, boundaryoffset:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&drm_header_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&drm_trailor_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sd_content_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 4030
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    .line 4031
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4032
    const/4 v11, 0x0

    .line 4036
    :cond_1
    :goto_0
    return-object v10

    .line 4024
    :catch_0
    move-exception v12

    .line 4026
    .local v12, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4030
    if-eqz v11, :cond_1

    .line 4031
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4032
    const/4 v11, 0x0

    goto :goto_0

    .line 4030
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_2

    .line 4031
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4032
    const/4 v11, 0x0

    :cond_2
    throw v0
.end method

.method private static getFirstLocaleInDB(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 424
    const-string v7, ""

    .line 425
    .local v7, ret:Ljava/lang/String;
    const/4 v6, 0x0

    .line 429
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_VERSION:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 438
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 449
    :cond_0
    if-eqz v6, :cond_1

    .line 451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 455
    :cond_1
    return-object v7

    .line 449
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getInfoTableUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "nId"

    .prologue
    .line 707
    const/4 v0, 0x0

    .line 708
    .local v0, uri:Landroid/net/Uri;
    packed-switch p0, :pswitch_data_0

    .line 730
    :goto_0
    return-object v0

    .line 711
    :pswitch_0
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE_INFO:Landroid/net/Uri;

    .line 712
    goto :goto_0

    .line 720
    :pswitch_1
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION_INFO:Landroid/net/Uri;

    .line 721
    goto :goto_0

    .line 723
    :pswitch_2
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM_INFO:Landroid/net/Uri;

    .line 724
    goto :goto_0

    .line 726
    :pswitch_3
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_INFO:Landroid/net/Uri;

    goto :goto_0

    .line 708
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getListTableUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "nId"

    .prologue
    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, uri:Landroid/net/Uri;
    packed-switch p0, :pswitch_data_0

    .line 687
    :goto_0
    return-object v0

    .line 668
    :pswitch_0
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE:Landroid/net/Uri;

    .line 669
    goto :goto_0

    .line 677
    :pswitch_1
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION:Landroid/net/Uri;

    .line 678
    goto :goto_0

    .line 680
    :pswitch_2
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM:Landroid/net/Uri;

    .line 681
    goto :goto_0

    .line 683
    :pswitch_3
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET:Landroid/net/Uri;

    goto :goto_0

    .line 665
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getListTableUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "hubtype"

    .prologue
    .line 692
    const-string v0, "Ringtone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE:Landroid/net/Uri;

    .line 700
    :goto_0
    return-object v0

    .line 694
    :cond_0
    const-string v0, "Alarm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM:Landroid/net/Uri;

    goto :goto_0

    .line 696
    :cond_1
    const-string v0, "Soundset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET:Landroid/net/Uri;

    goto :goto_0

    .line 698
    :cond_2
    const-string v0, "Notification"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 699
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION:Landroid/net/Uri;

    goto :goto_0

    .line 700
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getLocaleLang(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 462
    const/4 v7, 0x0

    .line 463
    .local v7, ret:Ljava/lang/String;
    const/4 v6, 0x0

    .line 467
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_VERSION:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->locale:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 476
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 487
    :cond_0
    if-eqz v6, :cond_1

    .line 489
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 493
    :cond_1
    return-object v7

    .line 487
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 489
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getLocaleListDVersion(Landroid/content/Context;I)J
    .locals 11
    .parameter "context"
    .parameter "listType"

    .prologue
    .line 2887
    invoke-static {p0}, Lcom/htc/sdm/util/SDMUtil;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 2891
    .local v8, strLocale:Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 2892
    .local v9, version:J
    const/4 v6, 0x0

    .line 2896
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->locale:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2897
    .local v3, queryStr:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->type:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2899
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_VERSION:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->dversion:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2908
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2910
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->dversion:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    .line 2923
    :cond_0
    if-eqz v6, :cond_1

    .line 2925
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2929
    .end local v3           #queryStr:Ljava/lang/String;
    :cond_1
    :goto_0
    return-wide v9

    .line 2917
    :catch_0
    move-exception v7

    .line 2919
    .local v7, e:Ljava/lang/Exception;
    const-wide/16 v9, 0x0

    .line 2923
    if-eqz v6, :cond_1

    .line 2925
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2923
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2925
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getLocaleListPage(Landroid/content/Context;I)J
    .locals 11
    .parameter "context"
    .parameter "listType"

    .prologue
    .line 2934
    invoke-static {p0}, Lcom/htc/sdm/util/SDMUtil;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 2938
    .local v8, strLocale:Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 2939
    .local v9, version:J
    const/4 v6, 0x0

    .line 2943
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->locale:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2944
    .local v3, queryStr:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->type:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2946
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_VERSION:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->page:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2955
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2957
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->page:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    .line 2970
    :cond_0
    if-eqz v6, :cond_1

    .line 2972
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2976
    .end local v3           #queryStr:Ljava/lang/String;
    :cond_1
    :goto_0
    return-wide v9

    .line 2964
    :catch_0
    move-exception v7

    .line 2966
    .local v7, e:Ljava/lang/Exception;
    const-wide/16 v9, 0x0

    .line 2970
    if-eqz v6, :cond_1

    .line 2972
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2970
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2972
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getLocaleListVersion(Landroid/content/Context;I)J
    .locals 11
    .parameter "context"
    .parameter "listType"

    .prologue
    .line 2840
    invoke-static {p0}, Lcom/htc/sdm/util/SDMUtil;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 2844
    .local v8, strLocale:Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 2845
    .local v9, version:J
    const/4 v6, 0x0

    .line 2849
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->locale:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2850
    .local v3, queryStr:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->type:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2852
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_VERSION:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->version:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2861
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2863
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->version:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    .line 2876
    :cond_0
    if-eqz v6, :cond_1

    .line 2878
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2882
    .end local v3           #queryStr:Ljava/lang/String;
    :cond_1
    :goto_0
    return-wide v9

    .line 2870
    :catch_0
    move-exception v7

    .line 2872
    .local v7, e:Ljava/lang/Exception;
    const-wide/16 v9, 0x0

    .line 2876
    if-eqz v6, :cond_1

    .line 2878
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2876
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2878
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static getPreferLang(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 389
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x62

    if-ne v5, v6, :cond_2

    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v4, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 392
    .local v4, systemLocale:Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, systemLanguage:Ljava/lang/String;
    const-string v0, "en"

    .line 395
    .local v0, lang:Ljava/lang/String;
    const-string v5, "zh"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "pt"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 397
    :cond_0
    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 416
    .end local v0           #lang:Ljava/lang/String;
    .end local v3           #systemLanguage:Ljava/lang/String;
    .end local v4           #systemLocale:Ljava/util/Locale;
    :goto_0
    return-object v0

    .line 401
    .restart local v0       #lang:Ljava/lang/String;
    .restart local v3       #systemLanguage:Ljava/lang/String;
    .restart local v4       #systemLocale:Ljava/util/Locale;
    :cond_1
    move-object v0, v3

    goto :goto_0

    .line 408
    .end local v0           #lang:Ljava/lang/String;
    .end local v3           #systemLanguage:Ljava/lang/String;
    .end local v4           #systemLocale:Ljava/util/Locale;
    :cond_2
    invoke-static {p0}, Lcom/htc/sdm/util/SDMUtil;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, strLocale:Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/htc/sdm/util/SDMDBUtil;->getLocaleLang(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, strLang:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 413
    invoke-static {p0}, Lcom/htc/sdm/util/SDMDBUtil;->getFirstLocaleInDB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v0, v1

    .line 416
    goto :goto_0
.end method

.method public static getSoundGUID(Landroid/content/Context;ILandroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "refTypeID"
    .parameter "soundUri"

    .prologue
    .line 821
    const-string v13, ""

    .line 823
    .local v13, ret:Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 824
    .local v1, uri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 828
    .local v10, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->downloaded:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 830
    .local v3, where:Ljava/lang/String;
    const/4 v12, 0x0

    .line 832
    .local v12, fileUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 833
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 834
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 836
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 837
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 840
    .end local v12           #fileUri:Landroid/net/Uri;
    .local v5, fileUri:Landroid/net/Uri;
    :goto_0
    if-eqz v10, :cond_0

    .line 842
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 843
    const/4 v10, 0x0

    .line 846
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eqz v5, :cond_1

    .line 848
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 849
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 851
    const-string v0, "SDM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SDMDBUtil] c fileUri="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :goto_1
    if-eqz v10, :cond_1

    .line 859
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    const/4 v10, 0x0

    .line 870
    :cond_1
    if-eqz v10, :cond_2

    .line 871
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 875
    .end local v3           #where:Ljava/lang/String;
    .end local v5           #fileUri:Landroid/net/Uri;
    :cond_2
    :goto_2
    return-object v13

    .line 855
    .restart local v3       #where:Ljava/lang/String;
    .restart local v5       #fileUri:Landroid/net/Uri;
    :cond_3
    :try_start_1
    const-string v13, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 864
    .end local v3           #where:Ljava/lang/String;
    .end local v5           #fileUri:Landroid/net/Uri;
    :catch_0
    move-exception v11

    .line 866
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 870
    if-eqz v10, :cond_2

    .line 871
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 870
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_4

    .line 871
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .restart local v3       #where:Ljava/lang/String;
    .restart local v12       #fileUri:Landroid/net/Uri;
    :cond_5
    move-object v5, v12

    .end local v12           #fileUri:Landroid/net/Uri;
    .restart local v5       #fileUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public static getSoundID(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;)J
    .locals 16
    .parameter "context"
    .parameter "refTypeID"
    .parameter "GUID"
    .parameter "checkmediastore"

    .prologue
    .line 881
    const-wide/16 v14, -0x1

    .line 883
    .local v14, ret:J
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 884
    .local v2, uri:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 888
    .local v11, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->downloaded:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 890
    .local v4, where:Ljava/lang/String;
    const/4 v13, 0x0

    .line 892
    .local v13, fileUri:Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 893
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 894
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 896
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->_id:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 897
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 900
    .end local v13           #fileUri:Landroid/net/Uri;
    .local v6, fileUri:Landroid/net/Uri;
    :goto_0
    if-eqz v11, :cond_0

    .line 902
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 903
    const/4 v11, 0x0

    .line 906
    :cond_0
    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 908
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 909
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 911
    const-string v1, "SDM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SDMDBUtil] c fileUri="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :goto_1
    if-eqz v11, :cond_1

    .line 919
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    const/4 v11, 0x0

    .line 930
    :cond_1
    if-eqz v11, :cond_2

    .line 931
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 935
    .end local v4           #where:Ljava/lang/String;
    .end local v6           #fileUri:Landroid/net/Uri;
    :cond_2
    :goto_2
    return-wide v14

    .line 915
    .restart local v4       #where:Ljava/lang/String;
    .restart local v6       #fileUri:Landroid/net/Uri;
    :cond_3
    const-wide/16 v14, -0x1

    goto :goto_1

    .line 924
    .end local v4           #where:Ljava/lang/String;
    .end local v6           #fileUri:Landroid/net/Uri;
    :catch_0
    move-exception v12

    .line 926
    .local v12, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 930
    if-eqz v11, :cond_2

    .line 931
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 930
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_4

    .line 931
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .restart local v4       #where:Ljava/lang/String;
    .restart local v13       #fileUri:Landroid/net/Uri;
    :cond_5
    move-object v6, v13

    .end local v13           #fileUri:Landroid/net/Uri;
    .restart local v6       #fileUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public static getSoundRefID(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 16
    .parameter "context"
    .parameter "GUID"
    .parameter "bCheckSD"

    .prologue
    .line 942
    const/4 v15, 0x0

    .line 943
    .local v15, ret:I
    const/4 v11, 0x0

    .line 946
    .local v11, bFound:Z
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 947
    .local v2, uri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 951
    .local v12, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 952
    .local v4, where:Ljava/lang/String;
    const/4 v14, 0x0

    .line 954
    .local v14, fileUri:Landroid/net/Uri;
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 955
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 956
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 958
    const/4 v15, 0x2

    .line 959
    const/4 v11, 0x1

    .line 960
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .end local v14           #fileUri:Landroid/net/Uri;
    .local v6, fileUri:Landroid/net/Uri;
    move-object v14, v6

    .line 963
    .end local v6           #fileUri:Landroid/net/Uri;
    .restart local v14       #fileUri:Landroid/net/Uri;
    :cond_0
    if-eqz v12, :cond_1

    .line 965
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 966
    const/4 v12, 0x0

    .line 969
    :cond_1
    if-nez v11, :cond_2

    .line 971
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 972
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 973
    if-eqz v12, :cond_b

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_b

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 975
    const/4 v15, 0x3

    .line 976
    const/4 v11, 0x1

    .line 977
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 980
    .end local v14           #fileUri:Landroid/net/Uri;
    .restart local v6       #fileUri:Landroid/net/Uri;
    :goto_0
    if-eqz v12, :cond_a

    .line 982
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 983
    const/4 v12, 0x0

    move-object v14, v6

    .line 987
    .end local v6           #fileUri:Landroid/net/Uri;
    .restart local v14       #fileUri:Landroid/net/Uri;
    :cond_2
    :goto_1
    if-nez v11, :cond_9

    .line 989
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 990
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 991
    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 993
    const/4 v15, 0x4

    .line 994
    const/4 v11, 0x1

    .line 995
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 998
    .end local v14           #fileUri:Landroid/net/Uri;
    .restart local v6       #fileUri:Landroid/net/Uri;
    :goto_2
    if-eqz v12, :cond_3

    .line 1000
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1001
    const/4 v12, 0x0

    .line 1005
    :cond_3
    :goto_3
    if-eqz v11, :cond_4

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    if-eq v15, v1, :cond_4

    if-eqz v6, :cond_4

    .line 1007
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1008
    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 1010
    const-string v1, "SDM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SDMDBUtil] c fileUri="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :goto_4
    if-eqz v12, :cond_4

    .line 1018
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    const/4 v12, 0x0

    .line 1029
    :cond_4
    if-eqz v12, :cond_5

    .line 1030
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1035
    .end local v4           #where:Ljava/lang/String;
    .end local v6           #fileUri:Landroid/net/Uri;
    :cond_5
    :goto_5
    const-string v1, "SDM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SDMDBUtil]  RefID "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    return v15

    .line 1014
    .restart local v4       #where:Ljava/lang/String;
    .restart local v6       #fileUri:Landroid/net/Uri;
    :cond_6
    const/4 v15, 0x0

    goto :goto_4

    .line 1023
    .end local v4           #where:Ljava/lang/String;
    .end local v6           #fileUri:Landroid/net/Uri;
    :catch_0
    move-exception v13

    .line 1025
    .local v13, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1029
    if-eqz v12, :cond_5

    .line 1030
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 1029
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v12, :cond_7

    .line 1030
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1

    .restart local v4       #where:Ljava/lang/String;
    .restart local v14       #fileUri:Landroid/net/Uri;
    :cond_8
    move-object v6, v14

    .end local v14           #fileUri:Landroid/net/Uri;
    .restart local v6       #fileUri:Landroid/net/Uri;
    goto :goto_2

    .end local v6           #fileUri:Landroid/net/Uri;
    .restart local v14       #fileUri:Landroid/net/Uri;
    :cond_9
    move-object v6, v14

    .end local v14           #fileUri:Landroid/net/Uri;
    .restart local v6       #fileUri:Landroid/net/Uri;
    goto :goto_3

    :cond_a
    move-object v14, v6

    .end local v6           #fileUri:Landroid/net/Uri;
    .restart local v14       #fileUri:Landroid/net/Uri;
    goto/16 :goto_1

    :cond_b
    move-object v6, v14

    .end local v14           #fileUri:Landroid/net/Uri;
    .restart local v6       #fileUri:Landroid/net/Uri;
    goto/16 :goto_0
.end method

.method public static getSoundSetParcelableByGUID(Landroid/content/Context;Ljava/lang/String;I)Lcom/htc/sdm/SoundSetParcelable;
    .locals 8
    .parameter "c"
    .parameter "guid"
    .parameter "type"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 4091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GUID = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4092
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 4093
    .local v6, cr:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 4096
    .local v7, parcelable:Lcom/htc/sdm/SoundSetParcelable;
    if-ne p2, v2, :cond_2

    .line 4098
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4099
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4101
    const/4 v0, 0x1

    invoke-static {p0, v6, v0}, Lcom/htc/sdm/util/SDMDBUtil;->cursor2Parcelable(Landroid/content/Context;Landroid/database/Cursor;I)Lcom/htc/sdm/SoundSetParcelable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 4127
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 4129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4132
    :cond_1
    return-object v7

    .line 4103
    :cond_2
    if-ne p2, v4, :cond_3

    .line 4104
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4105
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4107
    const/4 v0, 0x2

    invoke-static {p0, v6, v0}, Lcom/htc/sdm/util/SDMDBUtil;->cursor2Parcelable(Landroid/content/Context;Landroid/database/Cursor;I)Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v7

    goto :goto_0

    .line 4109
    :cond_3
    if-ne p2, v5, :cond_4

    .line 4110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4111
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4113
    const/4 v0, 0x4

    invoke-static {p0, v6, v0}, Lcom/htc/sdm/util/SDMDBUtil;->cursor2Parcelable(Landroid/content/Context;Landroid/database/Cursor;I)Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v7

    goto :goto_0

    .line 4118
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4119
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4121
    const/4 v0, 0x3

    invoke-static {p0, v6, v0}, Lcom/htc/sdm/util/SDMDBUtil;->cursor2Parcelable(Landroid/content/Context;Landroid/database/Cursor;I)Lcom/htc/sdm/SoundSetParcelable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_0

    .line 4127
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 4129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static getUris(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "context"
    .parameter "table"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4138
    .local p2, arraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v6, 0x0

    .line 4139
    .local v6, ListCursor:Landroid/database/Cursor;
    const-string v7, ""

    .line 4143
    .local v7, strDB:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4144
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4148
    :cond_0
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4149
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 4152
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4154
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 4159
    :cond_2
    if-eqz v6, :cond_3

    .line 4161
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4164
    :cond_3
    return-void

    .line 4159
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 4161
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static hasDeleteItem(Landroid/content/Context;Ljava/lang/String;III)Z
    .locals 10
    .parameter "context"
    .parameter "version"
    .parameter "nId"
    .parameter "srcType"
    .parameter "downloadStatus"

    .prologue
    .line 1094
    const/4 v3, 0x0

    .line 1095
    .local v3, where:Ljava/lang/String;
    const/4 v7, 0x1

    .line 1097
    .local v7, deleteMode:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->version:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1104
    :cond_0
    if-eqz p4, :cond_1

    .line 1106
    if-eqz v3, :cond_5

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->downloaded:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1117
    :cond_1
    :goto_0
    packed-switch p3, :pswitch_data_0

    .line 1172
    :goto_1
    if-eqz v7, :cond_3

    .line 1174
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    .line 1176
    invoke-static {p0}, Lcom/htc/sdm/util/SDMUtil;->getCurSoundsetGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1177
    .local v8, mStrCurSelGUID:Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 1180
    if-eqz v3, :cond_2

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1184
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<>\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1206
    .end local v8           #mStrCurSelGUID:Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v6, 0x0

    .line 1207
    .local v6, ListCursor:Landroid/database/Cursor;
    invoke-static {p2}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 1208
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_e

    .line 1212
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1218
    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_c

    .line 1219
    const/4 v0, 0x1

    .line 1225
    if-eqz v6, :cond_4

    .line 1227
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1232
    :cond_4
    :goto_3
    return v0

    .line 1113
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #ListCursor:Landroid/database/Cursor;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->downloaded:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1127
    :pswitch_0
    if-eqz v3, :cond_6

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1134
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1136
    goto/16 :goto_1

    .line 1138
    :pswitch_1
    if-eqz v3, :cond_7

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1145
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1147
    goto/16 :goto_1

    .line 1149
    :pswitch_2
    if-eqz v3, :cond_8

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1156
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1158
    goto/16 :goto_1

    .line 1160
    :pswitch_3
    if-eqz v3, :cond_9

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1167
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1189
    :cond_a
    invoke-static {p0}, Lcom/htc/sdm/util/SDMDBUtil;->listAllValidSoundGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 1190
    .local v9, soundGUIDList:Ljava/lang/String;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1192
    if-eqz v3, :cond_b

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1196
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " NOT IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 1221
    .end local v9           #soundGUIDList:Ljava/lang/String;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #ListCursor:Landroid/database/Cursor;
    :cond_c
    const/4 v0, 0x0

    .line 1225
    if-eqz v6, :cond_4

    .line 1227
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 1225
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_d

    .line 1227
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0

    .line 1232
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static hasListInSystemLang(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 736
    const/4 v8, 0x0

    .line 738
    .local v8, totallist:I
    invoke-static {p0}, Lcom/htc/sdm/util/SDMUtil;->getSystemLang(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 740
    .local v7, systemLang:Ljava/lang/String;
    const/4 v6, 0x0

    .line 744
    .local v6, Cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_INFO:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->_id:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 752
    if-eqz v6, :cond_0

    .line 754
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 759
    :cond_0
    if-eqz v6, :cond_1

    .line 761
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 765
    :cond_1
    if-lez v8, :cond_3

    move v0, v9

    :goto_0
    return v0

    .line 759
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 761
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move v0, v10

    .line 765
    goto :goto_0
.end method

.method public static isDataStorageFull(Landroid/content/Context;J)Z
    .locals 7
    .parameter "c"
    .parameter "requireSize"

    .prologue
    .line 4041
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4042
    .local v0, FileStats:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v1, v5

    .line 4043
    .local v1, blkSize:J
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    mul-long v3, v5, v1

    .line 4046
    .local v3, freeMem:J
    cmp-long v5, v3, p1

    if-gez v5, :cond_0

    .line 4047
    const/4 v5, 0x1

    .line 4049
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isSoundInDB(Landroid/content/Context;ILandroid/net/Uri;)Z
    .locals 8
    .parameter "context"
    .parameter "refTypeID"
    .parameter "soundUri"

    .prologue
    .line 771
    const/4 v7, 0x0

    .line 773
    .local v7, ret:Z
    const/4 v6, 0x0

    .line 774
    .local v6, ListCursor:Landroid/database/Cursor;
    invoke-static {p1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 775
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 776
    .local v3, where:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 780
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 787
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    const/4 v7, 0x1

    .line 794
    :cond_0
    if-eqz v6, :cond_1

    .line 796
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 815
    :cond_1
    return v7

    .line 794
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 796
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static isSoundWithinSoundset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "soundGUID"
    .parameter "validSoundset"

    .prologue
    .line 3551
    const/4 v6, 0x0

    .line 3552
    .local v6, bResult:Z
    if-eqz p1, :cond_2

    .line 3554
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3555
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 3558
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3559
    .local v3, where:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3562
    :cond_0
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3563
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_3

    .line 3566
    const/4 v6, 0x1

    .line 3583
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 3584
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3587
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_2
    return v6

    .line 3570
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_3
    if-eqz v7, :cond_4

    .line 3571
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3573
    :cond_4
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_DEF_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3574
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-lez v1, :cond_1

    .line 3577
    const/4 v6, 0x1

    goto :goto_0

    .line 3583
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 3584
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public static listAllGuid(Landroid/content/Context;I)Ljava/util/Set;
    .locals 9
    .parameter "context"
    .parameter "listType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3231
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 3233
    .local v8, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3235
    .local v1, uriList:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 3251
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3253
    .local v3, queryStr:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3257
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3259
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3261
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v7

    .line 3265
    .local v7, guidName:Ljava/lang/String;
    :cond_0
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3266
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 3271
    .end local v7           #guidName:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 3273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3277
    :cond_2
    return-object v8

    .line 3238
    .end local v3           #queryStr:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :pswitch_0
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET:Landroid/net/Uri;

    .line 3239
    goto :goto_0

    .line 3241
    :pswitch_1
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE:Landroid/net/Uri;

    .line 3242
    goto :goto_0

    .line 3244
    :pswitch_2
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION:Landroid/net/Uri;

    .line 3245
    goto :goto_0

    .line 3247
    :pswitch_3
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM:Landroid/net/Uri;

    goto :goto_0

    .line 3271
    .restart local v3       #queryStr:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_3

    .line 3273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 3235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static listAllValidSoundGuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "context"

    .prologue
    .line 3359
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3360
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 3361
    .local v8, sb:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 3364
    .local v11, strQuery:Ljava/lang/String;
    const/4 v3, 0x0

    .line 3365
    .local v3, where:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/sdm/util/SDMDBUtil;->listAllValidSoundsetGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 3366
    .local v10, soundsetGuidList:Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3372
    :cond_0
    const/4 v7, 0x0

    .line 3376
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "GUID"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "PARENT_GUID"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "refType"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3378
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3380
    const/4 v6, 0x0

    .line 3381
    .local v6, col:I
    const/4 v9, 0x0

    .line 3384
    .local v9, soundGUID:Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    .line 3385
    const-string v1, "PARENT_GUID"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3387
    if-ltz v6, :cond_2

    .line 3389
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 3392
    :cond_2
    const-string v1, "refType"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3394
    if-ltz v6, :cond_3

    .line 3396
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 3400
    :cond_3
    const-string v1, "GUID"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3402
    if-ltz v6, :cond_5

    .line 3404
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3405
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 3407
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 3409
    const-string v1, ", "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3411
    :cond_4
    const-string v1, "\'"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3415
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 3420
    .end local v6           #col:I
    .end local v9           #soundGUID:Ljava/lang/String;
    :cond_6
    if-eqz v7, :cond_7

    .line 3422
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3429
    :cond_7
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 3431
    if-eqz v3, :cond_12

    .line 3432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3437
    :cond_8
    :goto_0
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_DEF_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "GUID"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "PARENT_GUID"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "refType"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3439
    if-eqz v7, :cond_e

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_e

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3441
    const/4 v6, 0x0

    .line 3442
    .restart local v6       #col:I
    const/4 v9, 0x0

    .line 3445
    .restart local v9       #soundGUID:Ljava/lang/String;
    :cond_9
    const/4 v9, 0x0

    .line 3446
    const-string v1, "PARENT_GUID"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3448
    if-ltz v6, :cond_a

    .line 3450
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 3453
    :cond_a
    const-string v1, "refType"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3455
    if-ltz v6, :cond_b

    .line 3457
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 3461
    :cond_b
    const-string v1, "GUID"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3463
    if-ltz v6, :cond_d

    .line 3465
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3466
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 3468
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_c

    .line 3470
    const-string v1, ", "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3472
    :cond_c
    const-string v1, "\'"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3476
    :cond_d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_9

    .line 3481
    .end local v6           #col:I
    .end local v9           #soundGUID:Ljava/lang/String;
    :cond_e
    if-eqz v7, :cond_f

    .line 3483
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3486
    :cond_f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_10

    .line 3487
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3489
    :cond_10
    return-object v11

    .line 3420
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_11

    .line 3422
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v1

    .line 3434
    :cond_12
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    goto/16 :goto_0

    .line 3481
    :catchall_1
    move-exception v1

    if-eqz v7, :cond_13

    .line 3483
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v1
.end method

.method public static listAllValidSoundsetGuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    .line 3282
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3283
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3284
    .local v9, sb:Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 3286
    .local v12, strQuery:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->downloaded:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3289
    .local v3, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 3293
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "downloaded"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "srcType"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "GUID"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3295
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3297
    const/4 v6, 0x0

    .line 3298
    .local v6, col:I
    const/4 v8, -0x1

    .line 3299
    .local v8, dlStatus:I
    const/4 v11, -0x1

    .line 3300
    .local v11, srcTypeId:I
    const/4 v10, 0x0

    .line 3303
    .local v10, soundsetGUID:Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    .line 3304
    const-string v1, "downloaded"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3306
    if-ltz v6, :cond_1

    .line 3308
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 3312
    :cond_1
    const-string v1, "srcType"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3314
    if-ltz v6, :cond_2

    .line 3316
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 3320
    :cond_2
    const-string v1, "GUID"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3322
    if-ltz v6, :cond_4

    .line 3324
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3325
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 3334
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 3336
    const-string v1, ", "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3338
    :cond_3
    const-string v1, "\'"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3342
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 3347
    .end local v6           #col:I
    .end local v8           #dlStatus:I
    .end local v10           #soundsetGUID:Ljava/lang/String;
    .end local v11           #srcTypeId:I
    :cond_5
    if-eqz v7, :cond_6

    .line 3349
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3352
    :cond_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 3353
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3355
    :cond_7
    return-object v12

    .line 3347
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_8

    .line 3349
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
.end method

.method public static listRefSoundGuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "context"

    .prologue
    .line 3755
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3756
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 3757
    .local v8, sb:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 3760
    .local v10, strQuery:Ljava/lang/String;
    const/4 v11, 0x0

    .line 3762
    .local v11, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 3766
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "GUID"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "PARENT_GUID"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "refType"

    aput-object v5, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3768
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3770
    const/4 v6, 0x0

    .line 3771
    .local v6, col:I
    const/4 v9, 0x0

    .line 3774
    .local v9, soundGUID:Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    .line 3775
    const-string v1, "PARENT_GUID"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3777
    if-ltz v6, :cond_1

    .line 3779
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 3782
    :cond_1
    const-string v1, "refType"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3784
    if-ltz v6, :cond_2

    .line 3786
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 3790
    :cond_2
    const-string v1, "GUID"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3792
    if-ltz v6, :cond_4

    .line 3794
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3795
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 3797
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 3799
    const-string v1, ", "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3801
    :cond_3
    const-string v1, "\'"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3805
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 3810
    .end local v6           #col:I
    .end local v9           #soundGUID:Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_6

    .line 3812
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3819
    :cond_6
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_11

    .line 3821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 3824
    .end local v11           #where:Ljava/lang/String;
    .local v3, where:Ljava/lang/String;
    :goto_0
    :try_start_2
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_DEF_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "GUID"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "PARENT_GUID"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "refType"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3826
    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3828
    const/4 v6, 0x0

    .line 3829
    .restart local v6       #col:I
    const/4 v9, 0x0

    .line 3832
    .restart local v9       #soundGUID:Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    .line 3833
    const-string v1, "PARENT_GUID"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3835
    if-ltz v6, :cond_8

    .line 3837
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 3840
    :cond_8
    const-string v1, "refType"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3842
    if-ltz v6, :cond_9

    .line 3844
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 3848
    :cond_9
    const-string v1, "GUID"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 3850
    if-ltz v6, :cond_b

    .line 3852
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3853
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 3855
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 3857
    const-string v1, ", "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3859
    :cond_a
    const-string v1, "\'"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3863
    :cond_b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-nez v1, :cond_7

    .line 3868
    .end local v6           #col:I
    .end local v9           #soundGUID:Ljava/lang/String;
    :cond_c
    if-eqz v7, :cond_d

    .line 3870
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3873
    :cond_d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 3874
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3876
    :cond_e
    return-object v10

    .line 3810
    .end local v3           #where:Ljava/lang/String;
    .restart local v11       #where:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_f

    .line 3812
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v1

    .line 3868
    :catchall_1
    move-exception v1

    move-object v3, v11

    .end local v11           #where:Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_10

    .line 3870
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v1

    .line 3868
    :catchall_2
    move-exception v1

    goto :goto_1

    .end local v3           #where:Ljava/lang/String;
    .restart local v11       #where:Ljava/lang/String;
    :cond_11
    move-object v3, v11

    .end local v11           #where:Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static loadCategorysFromDB(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 9
    .parameter "context"
    .parameter "nId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sdm/SoundSetCategoryGroupParcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1050
    const/4 v3, 0x0

    .line 1051
    .local v3, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1052
    .local v7, ListCursor:Landroid/database/Cursor;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1054
    .local v6, List:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundSetCategoryGroupParcelable;>;"
    if-eqz v6, :cond_3

    .line 1056
    invoke-static {p1}, Lcom/htc/sdm/util/SDMDBUtil;->getCategoryUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 1060
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "cat"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "count(cat) as cat_counter"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1067
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1071
    :cond_0
    invoke-static {p0, v7}, Lcom/htc/sdm/util/SDMDBUtil;->cursor2CategoryParcelable(Landroid/content/Context;Landroid/database/Cursor;)Lcom/htc/sdm/SoundSetCategoryGroupParcelable;

    move-result-object v8

    .line 1073
    .local v8, parcelable:Lcom/htc/sdm/SoundSetCategoryGroupParcelable;
    if-eqz v8, :cond_1

    .line 1075
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    .end local v8           #parcelable:Lcom/htc/sdm/SoundSetCategoryGroupParcelable;
    :cond_2
    if-eqz v7, :cond_3

    .line 1084
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1088
    .end local v1           #uri:Landroid/net/Uri;
    :cond_3
    return-object v6

    .line 1082
    .restart local v1       #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1084
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static loadDefSoundListFromDBbyParentGUID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .parameter "context"
    .parameter "P_GUID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sdm/SoundParcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PARENT_GUID = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1671
    .local v4, where:Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1673
    .local v16, rets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundParcelable;>;"
    const/4 v12, 0x0

    .line 1676
    .local v12, ListCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_DEF_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1687
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1691
    :cond_0
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1692
    .local v11, GUID:Ljava/lang/String;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1693
    .local v15, refType:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GUID = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 1695
    .local v8, curWhere:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1698
    .local v13, localCurson:Landroid/database/Cursor;
    :try_start_1
    const-string v1, "S_Ringtone"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1700
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE_CAT:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1711
    :goto_0
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1713
    move-object/from16 v0, p0

    invoke-static {v0, v13, v15}, Lcom/htc/sdm/util/SDMDBUtil;->cursor2SoundParcelable(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/htc/sdm/SoundParcelable;

    move-result-object v14

    .line 1715
    .local v14, parcelable:Lcom/htc/sdm/SoundParcelable;
    if-eqz v14, :cond_1

    .line 1716
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1721
    .end local v14           #parcelable:Lcom/htc/sdm/SoundParcelable;
    :cond_1
    if-eqz v13, :cond_2

    .line 1722
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1725
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    .line 1730
    .end local v8           #curWhere:Ljava/lang/String;
    .end local v11           #GUID:Ljava/lang/String;
    .end local v13           #localCurson:Landroid/database/Cursor;
    .end local v15           #refType:Ljava/lang/String;
    :cond_3
    if-eqz v12, :cond_4

    .line 1732
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1735
    :cond_4
    return-object v16

    .line 1702
    .restart local v8       #curWhere:Ljava/lang/String;
    .restart local v11       #GUID:Ljava/lang/String;
    .restart local v13       #localCurson:Landroid/database/Cursor;
    .restart local v15       #refType:Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v1, "S_Alarm"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1704
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM_CAT:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    goto :goto_0

    .line 1708
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION_CAT:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v13

    goto :goto_0

    .line 1721
    :catchall_0
    move-exception v1

    if-eqz v13, :cond_7

    .line 1722
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1730
    .end local v8           #curWhere:Ljava/lang/String;
    .end local v11           #GUID:Ljava/lang/String;
    .end local v13           #localCurson:Landroid/database/Cursor;
    .end local v15           #refType:Ljava/lang/String;
    :catchall_1
    move-exception v1

    if-eqz v12, :cond_8

    .line 1732
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
.end method

.method public static loadDelModeListsFromDB(Landroid/content/Context;III)Ljava/util/ArrayList;
    .locals 8
    .parameter "context"
    .parameter "nId"
    .parameter "srcType"
    .parameter "downloadStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sdm/SoundSetParcelable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1326
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/htc/sdm/util/SDMDBUtil;->_loadListsFromDB(Landroid/content/Context;Ljava/lang/String;IIIZZ)Ljava/util/ArrayList;

    move-result-object v7

    .line 1328
    .local v7, List:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundSetParcelable;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1333
    :cond_0
    return-object v7
.end method

.method public static loadListsFromDB(Landroid/content/Context;IIIZ)Ljava/util/ArrayList;
    .locals 8
    .parameter "context"
    .parameter "nId"
    .parameter "srcType"
    .parameter "downloadStatus"
    .parameter "bCheckSD"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sdm/SoundSetParcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1303
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/sdm/util/SDMDBUtil;->_loadListsFromDB(Landroid/content/Context;Ljava/lang/String;IIIZZ)Ljava/util/ArrayList;

    move-result-object v7

    .line 1305
    .local v7, List:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundSetParcelable;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1310
    :cond_0
    return-object v7
.end method

.method public static loadListsFromDBbyCategory(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "context"
    .parameter "nId"
    .parameter "cat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sdm/SoundSetParcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->srcType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "= \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1249
    .local v3, where:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "AND cat = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1252
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .local v8, rets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundSetParcelable;>;"
    const/4 v6, 0x0

    .line 1256
    .local v6, ListCursor:Landroid/database/Cursor;
    invoke-static {p1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 1260
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1262
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1266
    :cond_1
    invoke-static {p0, v6, p1}, Lcom/htc/sdm/util/SDMDBUtil;->cursor2Parcelable(Landroid/content/Context;Landroid/database/Cursor;I)Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v7

    .line 1274
    .local v7, parcelable:Lcom/htc/sdm/SoundSetParcelable;
    if-eqz v7, :cond_2

    .line 1276
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1283
    .end local v7           #parcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_3
    if-eqz v6, :cond_4

    .line 1285
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1288
    :cond_4
    return-object v8

    .line 1283
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1285
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static loadSoundFromDB(Landroid/content/Context;ILjava/lang/String;)Lcom/htc/sdm/SoundParcelable;
    .locals 28
    .parameter "context"
    .parameter "nId"
    .parameter "GUID"

    .prologue
    .line 1816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GUID = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1817
    .local v4, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1818
    .local v9, ret:Lcom/htc/sdm/SoundParcelable;
    invoke-static/range {p1 .. p1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 1820
    .local v2, uri:Landroid/net/Uri;
    const/16 v23, 0x0

    .line 1823
    .local v23, ListCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 1824
    if-eqz v23, :cond_5

    .line 1826
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    move-object/from16 v26, v9

    .line 1830
    .end local v9           #ret:Lcom/htc/sdm/SoundParcelable;
    .local v26, ret:Lcom/htc/sdm/SoundParcelable;
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/htc/sdm/util/SDMDBUtil;->getPreferLang(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    .line 1831
    .local v22, Lang:Ljava/lang/String;
    const-string v18, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1833
    .local v18, name:Ljava/lang/String;
    const/16 v21, 0x0

    .line 1836
    .local v21, InfoCursor:Landroid/database/Cursor;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "custom"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\')"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1842
    .local v8, infowhere:Ljava/lang/String;
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_7

    .line 1844
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE_INFO:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1847
    if-eqz v21, :cond_1

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1848
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE_INFO:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v12, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1879
    :cond_1
    :goto_0
    if-eqz v21, :cond_2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1883
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v18

    .line 1894
    :cond_2
    if-eqz v21, :cond_3

    .line 1896
    :try_start_3
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1900
    :cond_3
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->_id:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1901
    .local v10, _id:J
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1902
    .local v12, soundGUID:Ljava/lang/String;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->prelisten_url:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1903
    .local v13, preUrl:Ljava/lang/String;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->file_url:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1904
    .local v14, url:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1905
    .local v15, thisUri:Ljava/lang/String;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1906
    .local v16, dlDbUri:Ljava/lang/String;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->downloaded:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1907
    .local v25, dlStatus:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/htc/sdm/util/SDMUtil;->RefID2Type(I)Ljava/lang/String;

    move-result-object v17

    .line 1909
    .local v17, refType:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v24

    .line 1910
    .local v24, authorize:Ljava/lang/Byte;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->auth_need:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1912
    .local v27, tmp:Ljava/lang/String;
    if-eqz v27, :cond_4

    .line 1913
    invoke-static/range {v27 .. v27}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v24

    .line 1916
    :cond_4
    new-instance v9, Lcom/htc/sdm/SoundParcelable;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Byte;->byteValue()B

    move-result v20

    invoke-direct/range {v9 .. v20}, Lcom/htc/sdm/SoundParcelable;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IB)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1928
    .end local v26           #ret:Lcom/htc/sdm/SoundParcelable;
    .restart local v9       #ret:Lcom/htc/sdm/SoundParcelable;
    if-eqz v9, :cond_b

    .line 1948
    .end local v8           #infowhere:Ljava/lang/String;
    .end local v10           #_id:J
    .end local v12           #soundGUID:Ljava/lang/String;
    .end local v13           #preUrl:Ljava/lang/String;
    .end local v14           #url:Ljava/lang/String;
    .end local v15           #thisUri:Ljava/lang/String;
    .end local v16           #dlDbUri:Ljava/lang/String;
    .end local v17           #refType:Ljava/lang/String;
    .end local v18           #name:Ljava/lang/String;
    .end local v21           #InfoCursor:Landroid/database/Cursor;
    .end local v22           #Lang:Ljava/lang/String;
    .end local v24           #authorize:Ljava/lang/Byte;
    .end local v25           #dlStatus:Ljava/lang/String;
    .end local v27           #tmp:Ljava/lang/String;
    :cond_5
    :goto_1
    if-eqz v23, :cond_6

    .line 1950
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 1953
    :cond_6
    return-object v9

    .line 1852
    .end local v9           #ret:Lcom/htc/sdm/SoundParcelable;
    .restart local v8       #infowhere:Ljava/lang/String;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v21       #InfoCursor:Landroid/database/Cursor;
    .restart local v22       #Lang:Ljava/lang/String;
    .restart local v26       #ret:Lcom/htc/sdm/SoundParcelable;
    :cond_7
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_8

    .line 1854
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM_INFO:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1857
    if-eqz v21, :cond_1

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1859
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1860
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM_INFO:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v12, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    goto/16 :goto_0

    .line 1867
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION_INFO:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1870
    if-eqz v21, :cond_1

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1872
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1873
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION_INFO:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v12, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v21

    goto/16 :goto_0

    .line 1894
    .end local v8           #infowhere:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v21, :cond_9

    .line 1896
    :try_start_5
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1948
    .end local v18           #name:Ljava/lang/String;
    .end local v21           #InfoCursor:Landroid/database/Cursor;
    .end local v22           #Lang:Ljava/lang/String;
    :catchall_1
    move-exception v1

    move-object/from16 v9, v26

    .end local v26           #ret:Lcom/htc/sdm/SoundParcelable;
    .restart local v9       #ret:Lcom/htc/sdm/SoundParcelable;
    :goto_2
    if-eqz v23, :cond_a

    .line 1950
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1

    .line 1932
    .restart local v8       #infowhere:Ljava/lang/String;
    .restart local v10       #_id:J
    .restart local v12       #soundGUID:Ljava/lang/String;
    .restart local v13       #preUrl:Ljava/lang/String;
    .restart local v14       #url:Ljava/lang/String;
    .restart local v15       #thisUri:Ljava/lang/String;
    .restart local v16       #dlDbUri:Ljava/lang/String;
    .restart local v17       #refType:Ljava/lang/String;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v21       #InfoCursor:Landroid/database/Cursor;
    .restart local v22       #Lang:Ljava/lang/String;
    .restart local v24       #authorize:Ljava/lang/Byte;
    .restart local v25       #dlStatus:Ljava/lang/String;
    .restart local v27       #tmp:Ljava/lang/String;
    :cond_b
    :try_start_6
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1948
    .end local v8           #infowhere:Ljava/lang/String;
    .end local v10           #_id:J
    .end local v12           #soundGUID:Ljava/lang/String;
    .end local v13           #preUrl:Ljava/lang/String;
    .end local v14           #url:Ljava/lang/String;
    .end local v15           #thisUri:Ljava/lang/String;
    .end local v16           #dlDbUri:Ljava/lang/String;
    .end local v17           #refType:Ljava/lang/String;
    .end local v18           #name:Ljava/lang/String;
    .end local v21           #InfoCursor:Landroid/database/Cursor;
    .end local v22           #Lang:Ljava/lang/String;
    .end local v24           #authorize:Ljava/lang/Byte;
    .end local v25           #dlStatus:Ljava/lang/String;
    .end local v27           #tmp:Ljava/lang/String;
    :catchall_2
    move-exception v1

    goto :goto_2
.end method

.method public static loadSoundListFromDBbyParentGUID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .parameter "context"
    .parameter "P_GUID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sdm/SoundParcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PARENT_GUID = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1591
    .local v4, where:Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1593
    .local v16, rets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundParcelable;>;"
    const/4 v12, 0x0

    .line 1596
    .local v12, ListCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1607
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1611
    :cond_0
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1612
    .local v11, GUID:Ljava/lang/String;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1613
    .local v15, refType:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GUID = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 1615
    .local v8, curWhere:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1618
    .local v13, localCurson:Landroid/database/Cursor;
    :try_start_1
    const-string v1, "S_Ringtone"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1620
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE_CAT:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1631
    :goto_0
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1633
    move-object/from16 v0, p0

    invoke-static {v0, v13, v15}, Lcom/htc/sdm/util/SDMDBUtil;->cursor2SoundParcelable(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/htc/sdm/SoundParcelable;

    move-result-object v14

    .line 1635
    .local v14, parcelable:Lcom/htc/sdm/SoundParcelable;
    if-eqz v14, :cond_1

    .line 1636
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1641
    .end local v14           #parcelable:Lcom/htc/sdm/SoundParcelable;
    :cond_1
    if-eqz v13, :cond_2

    .line 1642
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1645
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    .line 1650
    .end local v8           #curWhere:Ljava/lang/String;
    .end local v11           #GUID:Ljava/lang/String;
    .end local v13           #localCurson:Landroid/database/Cursor;
    .end local v15           #refType:Ljava/lang/String;
    :cond_3
    if-eqz v12, :cond_4

    .line 1652
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1655
    :cond_4
    return-object v16

    .line 1622
    .restart local v8       #curWhere:Ljava/lang/String;
    .restart local v11       #GUID:Ljava/lang/String;
    .restart local v13       #localCurson:Landroid/database/Cursor;
    .restart local v15       #refType:Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v1, "S_Alarm"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1624
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM_CAT:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    goto :goto_0

    .line 1628
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION_CAT:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v13

    goto :goto_0

    .line 1641
    :catchall_0
    move-exception v1

    if-eqz v13, :cond_7

    .line 1642
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1650
    .end local v8           #curWhere:Ljava/lang/String;
    .end local v11           #GUID:Ljava/lang/String;
    .end local v13           #localCurson:Landroid/database/Cursor;
    .end local v15           #refType:Ljava/lang/String;
    :catchall_1
    move-exception v1

    if-eqz v12, :cond_8

    .line 1652
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
.end method

.method public static loadSoundSetFromDB(Landroid/content/Context;ILjava/lang/String;)Lcom/htc/sdm/SoundSetParcelable;
    .locals 9
    .parameter "context"
    .parameter "nId"
    .parameter "GUID"

    .prologue
    .line 1749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GUID = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1750
    .local v3, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1754
    .local v8, ret:Lcom/htc/sdm/SoundSetParcelable;
    const/4 v6, 0x0

    .line 1755
    .local v6, ListCursor:Landroid/database/Cursor;
    invoke-static {p1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 1759
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1760
    if-eqz v6, :cond_1

    .line 1762
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1766
    :cond_0
    invoke-static {p0, v6, p1}, Lcom/htc/sdm/util/SDMDBUtil;->cursor2Parcelable(Landroid/content/Context;Landroid/database/Cursor;I)Lcom/htc/sdm/SoundSetParcelable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1774
    .local v7, parcelable:Lcom/htc/sdm/SoundSetParcelable;
    if-eqz v7, :cond_3

    .line 1776
    move-object v8, v7

    .line 1795
    .end local v7           #parcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 1797
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1800
    :cond_2
    return-object v8

    .line 1779
    .restart local v7       #parcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1795
    .end local v7           #parcelable:Lcom/htc/sdm/SoundSetParcelable;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1797
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static loadUninstallDefSoundList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 20
    .parameter "context"
    .parameter "G_ParentGUID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sdm/SoundParcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PARENT_GUID IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3602
    .local v5, where:Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 3603
    .local v17, rets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundParcelable;>;"
    const/16 v19, 0x0

    .line 3604
    .local v19, validsoundsetList:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/htc/sdm/util/SDMDBUtil;->listAllValidSoundsetGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 3605
    .local v18, soundsetGuidList:Ljava/lang/String;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 3607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3611
    :cond_0
    const/4 v13, 0x0

    .line 3615
    .local v13, ListCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_DEF_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 3616
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3620
    :cond_1
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3621
    .local v12, GUID:Ljava/lang/String;
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3623
    .local v16, refType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v12, v1}, Lcom/htc/sdm/util/SDMDBUtil;->isSoundWithinSoundset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3658
    :cond_2
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 3663
    .end local v12           #GUID:Ljava/lang/String;
    .end local v16           #refType:Ljava/lang/String;
    :cond_3
    if-eqz v13, :cond_4

    .line 3665
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3668
    :cond_4
    return-object v17

    .line 3626
    .restart local v12       #GUID:Ljava/lang/String;
    .restart local v16       #refType:Ljava/lang/String;
    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GUID = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND downloaded = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 3628
    .local v9, curWhere:Ljava/lang/String;
    const/4 v14, 0x0

    .line 3631
    .local v14, localCurson:Landroid/database/Cursor;
    :try_start_2
    const-string v2, "S_Ringtone"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3633
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE_CAT:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 3644
    :goto_1
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3646
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v14, v1}, Lcom/htc/sdm/util/SDMDBUtil;->cursor2SoundParcelable(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/htc/sdm/SoundParcelable;

    move-result-object v15

    .line 3648
    .local v15, parcelable:Lcom/htc/sdm/SoundParcelable;
    if-eqz v15, :cond_6

    .line 3649
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3654
    .end local v15           #parcelable:Lcom/htc/sdm/SoundParcelable;
    :cond_6
    if-eqz v14, :cond_2

    .line 3655
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3663
    .end local v9           #curWhere:Ljava/lang/String;
    .end local v12           #GUID:Ljava/lang/String;
    .end local v14           #localCurson:Landroid/database/Cursor;
    .end local v16           #refType:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_7

    .line 3665
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 3635
    .restart local v9       #curWhere:Ljava/lang/String;
    .restart local v12       #GUID:Ljava/lang/String;
    .restart local v14       #localCurson:Landroid/database/Cursor;
    .restart local v16       #refType:Ljava/lang/String;
    :cond_8
    :try_start_4
    const-string v2, "S_Alarm"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3637
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM_CAT:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto :goto_1

    .line 3641
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION_CAT:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v14

    goto :goto_1

    .line 3654
    :catchall_1
    move-exception v2

    if-eqz v14, :cond_a

    .line 3655
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static recoverDefSoundsetChild(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "parentGUID"

    .prologue
    .line 3493
    if-eqz p1, :cond_0

    .line 3495
    const/4 v6, 0x0

    .line 3496
    .local v6, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3497
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3499
    .local v9, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-nez v9, :cond_1

    .line 3548
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    :goto_0
    return-void

    .line 3504
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    new-instance v7, Lcom/htc/sdm/provider/SoundSetChildDAO;

    invoke-direct {v7}, Lcom/htc/sdm/provider/SoundSetChildDAO;-><init>()V

    .line 3506
    .local v7, childDAO:Lcom/htc/sdm/provider/SoundSetChildDAO;
    if-eqz v7, :cond_0

    .line 3511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3515
    .local v3, where:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_DEF_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3516
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3520
    :cond_2
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    .line 3521
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/sdm/provider/SoundSetChildDAO;->PARENT_GUID:Ljava/lang/String;

    .line 3522
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    .line 3523
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/htc/sdm/provider/SoundSetChildDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3524
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3526
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3529
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3530
    const-string v1, "com.htc.sdm.provider.SDMProvider"

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3544
    :cond_3
    if-eqz v6, :cond_0

    .line 3545
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3534
    :catch_0
    move-exception v8

    .line 3536
    .local v8, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3544
    if-eqz v6, :cond_0

    .line 3545
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3538
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 3540
    .local v8, e:Landroid/content/OperationApplicationException;
    :try_start_2
    invoke-virtual {v8}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3544
    if-eqz v6, :cond_0

    .line 3545
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3544
    .end local v8           #e:Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 3545
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static replaceUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4
    .parameter "cr"
    .parameter "table"
    .parameter "oldUri"
    .parameter "newUri"

    .prologue
    .line 4179
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 4185
    :cond_0
    :goto_0
    return-void

    .line 4181
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4182
    .local v1, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4183
    .local v0, vl:Landroid/content/ContentValues;
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4184
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setCurSoundUri(Landroid/content/Context;ILjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "refTypeID"
    .parameter "strUri"

    .prologue
    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, c:Landroid/database/Cursor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v4}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/htc/sdm/util/SDMUtil;->RefID2Type(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, selectionWithRefType:Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SETTING:Landroid/net/Uri;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 575
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SETTING:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v1, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 576
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 577
    .local v2, values:Landroid/content/ContentValues;
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, p1, v5}, Lcom/htc/sdm/util/SDMDBUtil;->getSoundGUID(Landroid/content/Context;ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/htc/sdm/util/SDMUtil;->RefID2Type(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SETTING:Landroid/net/Uri;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 583
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    if-eqz v0, :cond_0

    .line 589
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 624
    :cond_0
    return-void

    .line 583
    .end local v2           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 587
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_1

    .line 589
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v3
.end method

.method public static declared-synchronized setLocaleList(Landroid/content/Context;ILjava/lang/String;JJJ)V
    .locals 10
    .parameter "context"
    .parameter "listType"
    .parameter "lang"
    .parameter "page"
    .parameter "version"
    .parameter "dversion"

    .prologue
    .line 2981
    const-class v9, Lcom/htc/sdm/util/SDMDBUtil;

    monitor-enter v9

    :try_start_0
    invoke-static {p0}, Lcom/htc/sdm/util/SDMUtil;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 2985
    .local v7, strLocale:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 3043
    :cond_0
    :goto_0
    monitor-exit v9

    return-void

    .line 2991
    :cond_1
    const/4 v6, 0x0

    .line 2995
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->locale:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2996
    .local v3, queryStr:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->type:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2998
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_VERSION:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3007
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3009
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 3011
    .local v8, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3012
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p3

    if-eqz v0, :cond_2

    .line 3013
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->page:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3014
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p5

    if-eqz v0, :cond_3

    .line 3015
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->version:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3016
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p7

    if-eqz v0, :cond_4

    .line 3017
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->dversion:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3019
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_VERSION:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v8, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3037
    :goto_1
    if-eqz v6, :cond_0

    .line 3039
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 2981
    .end local v3           #queryStr:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #strLocale:Ljava/lang/String;
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 3023
    .restart local v3       #queryStr:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #strLocale:Ljava/lang/String;
    :cond_5
    :try_start_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 3025
    .restart local v8       #values:Landroid/content/ContentValues;
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->type:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3026
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->locale:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3027
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3028
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->page:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3029
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->version:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3030
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->dversion:Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_VERSION_LIST_INDEX;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3032
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_VERSION:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 3037
    .end local v3           #queryStr:Ljava/lang/String;
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_6

    .line 3039
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static updateDefaultNotifySound(Landroid/content/Context;Lcom/htc/sdm/SoundSetParcelable;Ljava/lang/String;)Lcom/htc/sdm/SoundSetParcelable;
    .locals 11
    .parameter "context"
    .parameter "soundSetParcelable"
    .parameter "defaultNotifyGUID"

    .prologue
    .line 3883
    const/4 v10, 0x0

    .line 3884
    .local v10, parcelable:Lcom/htc/sdm/SoundSetParcelable;
    const/4 v6, 0x0

    .line 3885
    .local v6, defaultNotifyCursor:Landroid/database/Cursor;
    if-eqz p1, :cond_0

    .line 3887
    move-object v10, p1

    .line 3889
    :cond_0
    if-eqz v10, :cond_4

    .line 3893
    :try_start_0
    invoke-virtual {v10}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v10}, Lcom/htc/sdm/SoundSetParcelable;->getRefType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calendar"

    if-eq v0, v1, :cond_1

    invoke-virtual {v10}, Lcom/htc/sdm/SoundSetParcelable;->getRefType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMail"

    if-eq v0, v1, :cond_1

    invoke-virtual {v10}, Lcom/htc/sdm/SoundSetParcelable;->getRefType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Message"

    if-eq v0, v1, :cond_1

    invoke-virtual {v10}, Lcom/htc/sdm/SoundSetParcelable;->getRefType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Task"

    if-ne v0, v1, :cond_3

    .line 3899
    :cond_1
    if-eqz p2, :cond_3

    .line 3901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3902
    .local v3, defaultNotifyWhere:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3903
    const/4 v8, 0x0

    .line 3904
    .local v8, defaultNotifyParcelable:Lcom/htc/sdm/SoundSetParcelable;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3906
    const/4 v0, 0x3

    invoke-static {p0, v6, v0}, Lcom/htc/sdm/util/SDMDBUtil;->cursor2Parcelable(Landroid/content/Context;Landroid/database/Cursor;I)Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v8

    .line 3908
    :cond_2
    if-eqz v8, :cond_3

    .line 3910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090008

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/htc/sdm/SoundSetParcelable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3911
    .local v7, defaultNotifyName:Ljava/lang/String;
    invoke-virtual {v8, v7}, Lcom/htc/sdm/SoundSetParcelable;->setName(Ljava/lang/String;)V

    .line 3912
    invoke-virtual {v10, v8}, Lcom/htc/sdm/SoundSetParcelable;->updateParcelable(Lcom/htc/sdm/SoundSetParcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3923
    .end local v3           #defaultNotifyWhere:Ljava/lang/String;
    .end local v7           #defaultNotifyName:Ljava/lang/String;
    .end local v8           #defaultNotifyParcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_3
    if-eqz v6, :cond_4

    .line 3925
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3929
    :cond_4
    :goto_0
    return-object v10

    .line 3917
    :catch_0
    move-exception v9

    .line 3919
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3923
    if-eqz v6, :cond_4

    .line 3925
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3923
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 3925
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static updateMediaFlag(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 4191
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/htc/sdm/util/SDMDBUtil;->_updateMediaFlag(Landroid/content/Context;I)V

    .line 4192
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/htc/sdm/util/SDMDBUtil;->_updateMediaFlag(Landroid/content/Context;I)V

    .line 4193
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/htc/sdm/util/SDMDBUtil;->_updateMediaFlag(Landroid/content/Context;I)V

    .line 4194
    return-void
.end method

.method public static updateSoundSetSize(Landroid/content/Context;Ljava/lang/String;)I
    .locals 19
    .parameter "context"
    .parameter "P_GUID"

    .prologue
    .line 3684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PARENT_GUID = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3685
    .local v4, where:Ljava/lang/String;
    const/16 v17, 0x0

    .line 3687
    .local v17, totalsize:I
    const/4 v12, 0x0

    .line 3690
    .local v12, ListCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3692
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3696
    :cond_0
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3697
    .local v11, GUID:Ljava/lang/String;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 3698
    .local v15, refType:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GUID = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 3700
    .local v8, curWhere:Ljava/lang/String;
    const/4 v14, 0x0

    .line 3703
    .local v14, localCurson:Landroid/database/Cursor;
    :try_start_1
    const-string v1, "S_Ringtone"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3705
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE_CAT:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 3716
    :goto_0
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3718
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3719
    .local v13, dlDbUri:Ljava/lang/String;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/htc/sdm/util/SDMUtil;->getTrackSize(Landroid/content/Context;Landroid/net/Uri;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v16

    .line 3720
    .local v16, soundsize:I
    if-lez v16, :cond_1

    .line 3721
    add-int v17, v17, v16

    .line 3726
    .end local v13           #dlDbUri:Ljava/lang/String;
    .end local v16           #soundsize:I
    :cond_1
    if-eqz v14, :cond_2

    .line 3727
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3730
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3732
    if-lez v17, :cond_3

    .line 3735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GUID = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3736
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 3737
    .local v18, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->size:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3738
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3744
    .end local v8           #curWhere:Ljava/lang/String;
    .end local v11           #GUID:Ljava/lang/String;
    .end local v14           #localCurson:Landroid/database/Cursor;
    .end local v15           #refType:Ljava/lang/String;
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_3
    if-eqz v12, :cond_4

    .line 3746
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3749
    :cond_4
    return v17

    .line 3707
    .restart local v8       #curWhere:Ljava/lang/String;
    .restart local v11       #GUID:Ljava/lang/String;
    .restart local v14       #localCurson:Landroid/database/Cursor;
    .restart local v15       #refType:Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v1, "S_Alarm"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3709
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM_CAT:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto/16 :goto_0

    .line 3713
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION_CAT:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v14

    goto/16 :goto_0

    .line 3726
    :catchall_0
    move-exception v1

    if-eqz v14, :cond_7

    .line 3727
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3744
    .end local v8           #curWhere:Ljava/lang/String;
    .end local v11           #GUID:Ljava/lang/String;
    .end local v14           #localCurson:Landroid/database/Cursor;
    .end local v15           #refType:Ljava/lang/String;
    :catchall_1
    move-exception v1

    if-eqz v12, :cond_8

    .line 3746
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
.end method
