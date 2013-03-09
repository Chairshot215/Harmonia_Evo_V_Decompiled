.class Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;
.super Ljava/lang/Object;
.source "SDMReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/receiver/SDMReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckRingtoneChanged"
.end annotation


# instance fields
.field private cx:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/sdm/receiver/SDMReceiver;


# direct methods
.method public constructor <init>(Lcom/htc/sdm/receiver/SDMReceiver;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->this$0:Lcom/htc/sdm/receiver/SDMReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->cx:Landroid/content/Context;

    .line 1354
    iput-object p2, p0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->cx:Landroid/content/Context;

    .line 1355
    return-void
.end method

.method private AddNewSound(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 22
    .parameter "ctx"
    .parameter "music"
    .parameter "refType"

    .prologue
    .line 1431
    const/4 v13, 0x0

    .line 1432
    .local v13, NewSoundGUID:Ljava/lang/String;
    const/16 v16, 0x0

    .line 1433
    .local v16, bSoundExist:Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1434
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .line 1435
    .local v15, SDMCursor:Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 1438
    .local v17, c:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1439
    .local v2, SoundTableUri:Landroid/net/Uri;
    packed-switch p3, :pswitch_data_0

    .line 1502
    :pswitch_0
    if-eqz v15, :cond_0

    .line 1503
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1504
    :cond_0
    if-eqz v17, :cond_1

    .line 1505
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v14, v13

    .line 1507
    .end local v13           #NewSoundGUID:Ljava/lang/String;
    .local v14, NewSoundGUID:Ljava/lang/String;
    :goto_0
    return-object v14

    .line 1442
    .end local v14           #NewSoundGUID:Ljava/lang/String;
    .restart local v13       #NewSoundGUID:Ljava/lang/String;
    :pswitch_1
    :try_start_0
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE:Landroid/net/Uri;

    .line 1451
    :goto_1
    if-eqz v2, :cond_2

    .line 1453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1454
    .local v4, where:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1455
    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1457
    const/16 v16, 0x1

    .line 1458
    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1462
    .end local v4           #where:Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_4

    if-nez v16, :cond_4

    .line 1464
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->cx:Landroid/content/Context;

    const-string v5, "SoundSetPref"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 1467
    .local v21, pref:Landroid/content/SharedPreferences;
    const-string v3, "PrefDefRingtone"

    const-string v5, ""

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 1468
    .local v19, defaultRing:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1471
    .local v18, cDefaultRing:Landroid/database/Cursor;
    :try_start_1
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1472
    if-eqz v18, :cond_3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1474
    const-string v3, "title"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1475
    .local v7, title:Ljava/lang/String;
    const-string v3, "_display_name"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1476
    .local v10, displayname:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sdm/util/SDMUtil;->CreateUUID()Ljava/lang/String;

    move-result-object v11

    .line 1478
    .local v11, UUID:Ljava/lang/String;
    const-string v8, "0"

    const-string v9, "0"

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v12, p3

    invoke-static/range {v5 .. v12}, Lcom/htc/sdm/util/SDMDBUtil;->AddNewDataToSDMDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1479
    move-object v13, v11

    .line 1489
    .end local v7           #title:Ljava/lang/String;
    .end local v10           #displayname:Ljava/lang/String;
    .end local v11           #UUID:Ljava/lang/String;
    :cond_3
    if-eqz v18, :cond_4

    .line 1490
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1502
    .end local v18           #cDefaultRing:Landroid/database/Cursor;
    .end local v19           #defaultRing:Ljava/lang/String;
    .end local v21           #pref:Landroid/content/SharedPreferences;
    :cond_4
    :goto_2
    if-eqz v15, :cond_5

    .line 1503
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1504
    :cond_5
    if-eqz v17, :cond_6

    .line 1505
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    move-object v14, v13

    .line 1507
    .end local v13           #NewSoundGUID:Ljava/lang/String;
    .restart local v14       #NewSoundGUID:Ljava/lang/String;
    goto/16 :goto_0

    .line 1445
    .end local v14           #NewSoundGUID:Ljava/lang/String;
    .restart local v13       #NewSoundGUID:Ljava/lang/String;
    :pswitch_2
    :try_start_3
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM:Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1446
    goto/16 :goto_1

    .line 1483
    .restart local v18       #cDefaultRing:Landroid/database/Cursor;
    .restart local v19       #defaultRing:Ljava/lang/String;
    .restart local v21       #pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v20

    .line 1485
    .local v20, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1489
    if-eqz v18, :cond_4

    .line 1490
    :try_start_5
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1495
    .end local v18           #cDefaultRing:Landroid/database/Cursor;
    .end local v19           #defaultRing:Ljava/lang/String;
    .end local v20           #e:Ljava/lang/Exception;
    .end local v21           #pref:Landroid/content/SharedPreferences;
    :catch_1
    move-exception v3

    .line 1502
    if-eqz v15, :cond_7

    .line 1503
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1504
    :cond_7
    if-eqz v17, :cond_6

    .line 1505
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1489
    .restart local v18       #cDefaultRing:Landroid/database/Cursor;
    .restart local v19       #defaultRing:Ljava/lang/String;
    .restart local v21       #pref:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v3

    if-eqz v18, :cond_8

    .line 1490
    :try_start_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1502
    .end local v18           #cDefaultRing:Landroid/database/Cursor;
    .end local v19           #defaultRing:Ljava/lang/String;
    .end local v21           #pref:Landroid/content/SharedPreferences;
    :catchall_1
    move-exception v3

    if-eqz v15, :cond_9

    .line 1503
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1504
    :cond_9
    if-eqz v17, :cond_a

    .line 1505
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3

    .line 1439
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1358
    iget-object v1, p0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->cx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1359
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1366
    .local v6, InfoCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->cx:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v9

    .line 1367
    .local v9, curRingtone:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 1369
    .local v13, soundSetRingtone:Landroid/net/Uri;
    iget-object v1, p0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->cx:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/sdm/util/SDMUtil;->getCurSoundsetGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 1370
    .local v10, curSoundSetGUID:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "S_Ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1377
    .local v3, ringWhere:Ljava/lang/String;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1378
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1380
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1382
    .local v12, soundGUID:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 1384
    iget-object v1, p0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->cx:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2, v12}, Lcom/htc/sdm/util/SDMDBUtil;->GetSoundUri(Landroid/content/Context;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 1386
    invoke-virtual {v13, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1393
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1395
    iget-object v1, p0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->cx:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v9, v2}, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->AddNewSound(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v7

    .line 1396
    .local v7, NewSoundGUID:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1398
    new-instance v8, Lcom/htc/sdm/provider/SoundSetChildDAO;

    invoke-direct {v8}, Lcom/htc/sdm/provider/SoundSetChildDAO;-><init>()V

    .line 1399
    .local v8, childDAO:Lcom/htc/sdm/provider/SoundSetChildDAO;
    iput-object v7, v8, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    .line 1400
    iget-object v1, p0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->cx:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/sdm/util/SDMUtil;->getCurSoundsetGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/htc/sdm/provider/SoundSetChildDAO;->PARENT_GUID:Ljava/lang/String;

    .line 1401
    const-string v1, "S_Ringtone"

    iput-object v1, v8, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    .line 1402
    iget-object v1, p0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->cx:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/htc/sdm/util/SDMDBUtil;->UpdateSoundSetChild(Landroid/content/Context;Lcom/htc/sdm/provider/SoundSetChildDAO;)V

    .line 1403
    iget-object v2, p0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->cx:Landroid/content/Context;

    const/4 v4, 0x2

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v2, v4, v1}, Lcom/htc/sdm/util/SDMDBUtil;->setCurSoundUri(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    .end local v7           #NewSoundGUID:Ljava/lang/String;
    .end local v8           #childDAO:Lcom/htc/sdm/provider/SoundSetChildDAO;
    .end local v12           #soundGUID:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 1419
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1422
    :cond_1
    iget-object v1, p0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->cx:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->CheckSDCardSound(Landroid/content/Context;)V

    .line 1423
    iget-object v1, p0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->this$0:Lcom/htc/sdm/receiver/SDMReceiver;

    const/4 v2, 0x0

    #setter for: Lcom/htc/sdm/receiver/SDMReceiver;->m_CheckRingtoneChanged:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/htc/sdm/receiver/SDMReceiver;->access$002(Lcom/htc/sdm/receiver/SDMReceiver;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1425
    .end local v3           #ringWhere:Ljava/lang/String;
    .end local v9           #curRingtone:Landroid/net/Uri;
    .end local v10           #curSoundSetGUID:Ljava/lang/String;
    .end local v13           #soundSetRingtone:Landroid/net/Uri;
    :goto_1
    return-void

    .line 1403
    .restart local v3       #ringWhere:Ljava/lang/String;
    .restart local v7       #NewSoundGUID:Ljava/lang/String;
    .restart local v8       #childDAO:Lcom/htc/sdm/provider/SoundSetChildDAO;
    .restart local v9       #curRingtone:Landroid/net/Uri;
    .restart local v10       #curSoundSetGUID:Ljava/lang/String;
    .restart local v12       #soundGUID:Ljava/lang/String;
    .restart local v13       #soundSetRingtone:Landroid/net/Uri;
    :cond_2
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1410
    .end local v3           #ringWhere:Ljava/lang/String;
    .end local v7           #NewSoundGUID:Ljava/lang/String;
    .end local v8           #childDAO:Lcom/htc/sdm/provider/SoundSetChildDAO;
    .end local v9           #curRingtone:Landroid/net/Uri;
    .end local v10           #curSoundSetGUID:Ljava/lang/String;
    .end local v12           #soundGUID:Ljava/lang/String;
    .end local v13           #soundSetRingtone:Landroid/net/Uri;
    :catch_0
    move-exception v11

    .line 1413
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1417
    if-eqz v6, :cond_3

    .line 1419
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1422
    :cond_3
    iget-object v1, p0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->cx:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->CheckSDCardSound(Landroid/content/Context;)V

    .line 1423
    iget-object v1, p0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->this$0:Lcom/htc/sdm/receiver/SDMReceiver;

    const/4 v2, 0x0

    #setter for: Lcom/htc/sdm/receiver/SDMReceiver;->m_CheckRingtoneChanged:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/htc/sdm/receiver/SDMReceiver;->access$002(Lcom/htc/sdm/receiver/SDMReceiver;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_1

    .line 1417
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 1419
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1422
    :cond_4
    iget-object v2, p0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->cx:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/sdm/util/SDMDBUtil;->CheckSDCardSound(Landroid/content/Context;)V

    .line 1423
    iget-object v2, p0, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;->this$0:Lcom/htc/sdm/receiver/SDMReceiver;

    const/4 v4, 0x0

    #setter for: Lcom/htc/sdm/receiver/SDMReceiver;->m_CheckRingtoneChanged:Ljava/lang/Thread;
    invoke-static {v2, v4}, Lcom/htc/sdm/receiver/SDMReceiver;->access$002(Lcom/htc/sdm/receiver/SDMReceiver;Ljava/lang/Thread;)Ljava/lang/Thread;

    throw v1
.end method
