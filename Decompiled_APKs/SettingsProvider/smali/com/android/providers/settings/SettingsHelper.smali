.class public Lcom/android/providers/settings/SettingsHelper;
.super Lcom/android/providers/settings/abs/HtcAbsSettingsHelper;
.source "SettingsHelper.java"


# static fields
.field private static final INTERNAL_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SettingsHelper"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContentService:Landroid/content/IContentService;

.field private mContext:Landroid/content/Context;

.field private mPowerManager:Landroid/os/IPowerManager;

.field private mSilent:Z

.field private mVibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/settings/SettingsHelper;->INTERNAL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/providers/settings/abs/HtcAbsSettingsHelper;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    .line 73
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 75
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mContentService:Landroid/content/IContentService;

    .line 76
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mPowerManager:Landroid/os/IPowerManager;

    .line 78
    return-void
.end method

.method private getRingtoneUriByPath(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 13
    .parameter "RingtonePath"
    .parameter "RingtoneType"

    .prologue
    .line 442
    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 446
    .local v8, cv:Landroid/content/ContentValues;
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsHelper;->INTERNAL_COLUMNS:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 450
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_6

    .line 451
    const-string v0, "SettingsHelper"

    const-string v1, "getRingtoneUriByPath get  INTERNAL_CONTENT_URI = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 472
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsHelper;->INTERNAL_COLUMNS:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 479
    if-nez v7, :cond_9

    .line 480
    const-string v0, "SettingsHelper"

    const-string v1, "getRingtoneUriByPath get  EXTERNAL_CONTENT_URI = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 518
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 521
    :cond_3
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/phoneStorage/audio/artists"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/providers/settings/SettingsHelper;->INTERNAL_COLUMNS:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 529
    if-nez v7, :cond_c

    .line 530
    const-string v0, "SettingsHelper"

    const-string v1, "getRingtoneUriByPath get  PHONE_CONTENT_URI = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    .line 574
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 579
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_5
    :goto_3
    const/4 v6, 0x0

    :goto_4
    return-object v6

    .line 454
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    :cond_7
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 460
    .local v10, ringtonID:J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_8

    .line 461
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_4

    .line 468
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    .line 483
    .end local v10           #ringtonID:J
    :cond_9
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    :cond_a
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 489
    .restart local v10       #ringtonID:J
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_b

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 495
    .local v6, RingtoneUri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 496
    packed-switch p2, :pswitch_data_0

    .line 508
    :goto_5
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v8, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 510
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 576
    .end local v6           #RingtoneUri:Landroid/net/Uri;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v10           #ringtonID:J
    :catch_0
    move-exception v9

    .line 577
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "SettingsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRingtoneUriByPath error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 498
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v6       #RingtoneUri:Landroid/net/Uri;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v10       #ringtonID:J
    :pswitch_1
    :try_start_1
    const-string v0, "is_ringtone"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 501
    :pswitch_2
    const-string v0, "is_notification"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 504
    :pswitch_3
    const-string v0, "is_alarm"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 514
    .end local v6           #RingtoneUri:Landroid/net/Uri;
    :cond_b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_1

    .line 533
    .end local v10           #ringtonID:J
    :cond_c
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 537
    :cond_d
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 539
    .restart local v10       #ringtonID:J
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_e

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/phoneStorage/audio/media"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 549
    .restart local v6       #RingtoneUri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 550
    packed-switch p2, :pswitch_data_1

    .line 562
    :goto_6
    :pswitch_4
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v8, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 564
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 552
    :pswitch_5
    const-string v0, "is_ringtone"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    .line 555
    :pswitch_6
    const-string v0, "is_notification"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    .line 558
    :pswitch_7
    const-string v0, "is_alarm"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    .line 569
    .end local v6           #RingtoneUri:Landroid/net/Uri;
    :cond_e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_2

    .line 496
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 550
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private setAlarm_Alert(Ljava/lang/String;)Z
    .locals 3
    .parameter "RingtonePath"

    .prologue
    const/4 v2, 0x4

    .line 423
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/providers/settings/SettingsHelper;->getRingtoneUriByPath(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    .local v0, RingtoneUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 427
    const/4 v1, 0x0

    .line 433
    :goto_0
    return v1

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "backup_alarm_alert"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 433
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setAutoRestore(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 284
    :try_start_0
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 286
    .local v0, bm:Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v0           #bm:Landroid/app/backup/IBackupManager;
    :cond_0
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setBrightness(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    const/4 v0, 0x0

    .line 329
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 334
    .local v0, enabled:Z
    :cond_0
    if-eqz v0, :cond_2

    .line 335
    const-string v2, "SettingsHelper"

    const-string v3, "[Restore Settings] The screen auto-backlight is enabled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v2, "SettingsHelper"

    const-string v3, "[Restore Settings] The underlying brightness does not need to be updated."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    const-string v2, "SettingsHelper"

    const-string v3, "[Restore Settings] The screen auto-backlight is disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 346
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_1

    .line 347
    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    .end local v1           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setGpsLocation(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 305
    const-string v0, "gps"

    .line 306
    .local v0, GPS:Ljava/lang/String;
    const-string v2, "gps"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gps,"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ",gps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ",gps,"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 311
    .local v1, enabled:Z
    :goto_0
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 313
    return-void

    .line 306
    .end local v1           #enabled:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setNetworkLocation(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 293
    const-string v0, "network"

    .line 294
    .local v0, NETWORK:Ljava/lang/String;
    const-string v2, "network"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "network,"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ",network"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ",network,"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 299
    .local v1, enabled:Z
    :goto_0
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 301
    return-void

    .line 294
    .end local v1           #enabled:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setNotification_Sound(Ljava/lang/String;)Z
    .locals 3
    .parameter "RingtonePath"

    .prologue
    const/4 v2, 0x2

    .line 405
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/providers/settings/SettingsHelper;->getRingtoneUriByPath(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    .local v0, RingtoneUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 409
    const/4 v1, 0x0

    .line 417
    :goto_0
    return v1

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "backup_notification_sound"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 417
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setRingerMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 355
    iget-boolean v2, p0, Lcom/android/providers/settings/SettingsHelper;->mSilent:Z

    if-eqz v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v3, p0, Lcom/android/providers/settings/SettingsHelper;->mVibrate:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 364
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 356
    goto :goto_0

    .line 359
    :cond_1
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 360
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v3, p0, Lcom/android/providers/settings/SettingsHelper;->mVibrate:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v2, v1, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private setRingtone(Ljava/lang/String;)Z
    .locals 4
    .parameter "RingtonePath"

    .prologue
    const/4 v1, 0x1

    .line 389
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/providers/settings/SettingsHelper;->getRingtoneUriByPath(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    .local v0, RingtoneUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 391
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 393
    const/4 v1, 0x0

    .line 399
    :goto_0
    return v1

    .line 396
    :cond_0
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_ringtone"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setRoamingOptions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "roamingOption"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 184
    const-string v0, "ConnectivityManager.ROAMING_PROVIDER_DOMESTIC"

    .line 185
    .local v0, DOMESTIC:Ljava/lang/String;
    const-string v1, "ConnectivityManager.ROAMING_PROVIDER_INTERNATIONAL"

    .line 187
    .local v1, INTERNATIONAL:Ljava/lang/String;
    const-string v6, "ConnectivityManager.ROAMING_PROVIDER_DOMESTIC"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "ConnectivityManager.ROAMING_PROVIDER_DOMESTIC,"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ",ConnectivityManager.ROAMING_PROVIDER_DOMESTIC"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ",ConnectivityManager.ROAMING_PROVIDER_DOMESTIC,"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    move v2, v5

    .line 193
    .local v2, enableDomestic:Z
    :goto_0
    const-string v6, "ConnectivityManager.ROAMING_PROVIDER_INTERNATIONAL"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "ConnectivityManager.ROAMING_PROVIDER_INTERNATIONAL,"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ",ConnectivityManager.ROAMING_PROVIDER_INTERNATIONAL"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ",ConnectivityManager.ROAMING_PROVIDER_INTERNATIONAL,"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    move v3, v5

    .line 199
    .local v3, enableInternational:Z
    :goto_1
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "DATA_ROAMING_ALLOWED"

    const-string v6, "data_roaming_allowed"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 203
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_DOMESTIC"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->setDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 205
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_INTERNATIONAL"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->setDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 279
    :cond_2
    :goto_2
    return-void

    .end local v2           #enableDomestic:Z
    .end local v3           #enableInternational:Z
    :cond_3
    move v2, v4

    .line 187
    goto :goto_0

    .restart local v2       #enableDomestic:Z
    :cond_4
    move v3, v4

    .line 193
    goto :goto_1

    .line 208
    .restart local v3       #enableInternational:Z
    :cond_5
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "VOICE_ROAMING_ALLOWED"

    const-string v6, "voice_roaming_allowed"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 212
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_DOMESTIC"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->setVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 214
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_INTERNATIONAL"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->setVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_2

    .line 217
    :cond_6
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "DATA_ROAMING_GUARD_ALLOWED"

    const-string v6, "data_roaming_guard_allowed"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 221
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_DOMESTIC"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->setDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 223
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_INTERNATIONAL"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->setDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_2

    .line 226
    :cond_7
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "VOICE_ROAMING_GUARD_ALLOWED"

    const-string v6, "voice_roaming_guard_allowed"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 230
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_DOMESTIC"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->setVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 232
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_INTERNATIONAL"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->setVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_2

    .line 235
    :cond_8
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "SMS_ROAMING_GUARD_ALLOWED"

    const-string v6, "sms_roaming_guard_allowed"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 239
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_DOMESTIC"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->setSmsRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 241
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_INTERNATIONAL"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->setSmsRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 245
    :cond_9
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "DATA_ROAMING_BLOCKED"

    const-string v6, "data_roaming_blocked"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 249
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_DOMESTIC"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->setDataRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 251
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_INTERNATIONAL"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->setDataRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 253
    :cond_a
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "VOICE_ROAMING_BLOCKED"

    const-string v6, "voice_roaming_blocked"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 257
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_DOMESTIC"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->setVoiceRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 259
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_INTERNATIONAL"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->setVoiceRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 261
    :cond_b
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "DATA_ROAMING_GUARD_BLOCKED"

    const-string v6, "data_roaming_guard_blocked"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 265
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_DOMESTIC"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->setDataRoamingGuardBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 267
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_INTERNATIONAL"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->setDataRoamingGuardBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 269
    :cond_c
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "VOICE_ROAMING_GUARD_BLOCKED"

    const-string v6, "voice_roaming_guard_blocked"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_DOMESTIC"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->setVoiceRoamingGuardBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 275
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ConnectivityManager.ROAMING_PROVIDER_INTERNATIONAL"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->setVoiceRoamingGuardBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_2
.end method

.method private setSDcardNotification(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method private setSoundEffects(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 316
    if-eqz p1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_0
.end method


# virtual methods
.method applyAudioSettings()V
    .locals 2

    .prologue
    .line 643
    new-instance v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    .line 644
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->reloadAudioSettings()V

    .line 645
    return-void
.end method

.method public canKeyAsyncToDb(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 674
    const-string v0, "accelerometer_rotation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "screen_brightness"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "screen_brightness_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sound_effects_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ringtone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v1, "SETTING_SD_CARD_NOTIFICATIONS"

    const-string v2, "sd_card_notifications"

    invoke-static {v0, v1, v2}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "notification_sound"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alarm_alert"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "time_12_24"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "accessibility_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "location_providers_allowed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    :cond_0
    const/4 v0, 0x0

    .line 690
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getLocaleData()[B
    .locals 6

    .prologue
    .line 585
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 586
    .local v0, conf:Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 587
    .local v2, loc:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, localeString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, country:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 592
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4
.end method

.method public restoreValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    const-string v3, "screen_brightness"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsHelper;->setBrightness(I)V

    :cond_0
    :goto_0
    move v1, v2

    .line 176
    :goto_1
    return v1

    .line 93
    :cond_1
    const-string v3, "sound_effects_enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsHelper;->setSoundEffects(Z)V

    goto :goto_0

    .line 95
    :cond_3
    const-string v3, "location_providers_allowed"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 96
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsHelper;->setNetworkLocation(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsHelper;->setGpsLocation(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_4
    const-string v3, "ringtone"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 101
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsHelper;->setRingtone(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 102
    :cond_5
    const-string v3, "notification_sound"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 103
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsHelper;->setNotification_Sound(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 104
    :cond_6
    const-string v3, "alarm_alert"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 105
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsHelper;->setAlarm_Alert(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 109
    :cond_7
    sget-object v3, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v4, "SETTING_SD_CARD_NOTIFICATIONS"

    const-string v5, "sd_card_notifications"

    invoke-static {v3, v4, v5}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 114
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsHelper;->setSDcardNotification(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 116
    :cond_8
    const-string v3, "backup_auto_restore"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_9

    move v1, v2

    :cond_9
    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsHelper;->setAutoRestore(Z)V

    goto/16 :goto_0

    .line 118
    :cond_a
    const-string v3, "bluetooth_on"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 119
    const-string v3, "SettingsHelper"

    const-string v4, "backup&restore to enable bt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 121
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 122
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_b
    sget-object v3, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v4, "BLUETOOTH_NAME"

    const-string v5, "bluetooth_name"

    invoke-static {v3, v4, v5}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 126
    const-string v2, "SettingsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup&restore bt name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 128
    .restart local v0       #adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 129
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 131
    :cond_c
    const-string v2, "service.brcm.bt.local_name"

    invoke-static {v2, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 137
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_d
    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "DATA_ROAMING_ALLOWED"

    const-string v4, "data_roaming_allowed"

    invoke-static {v1, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "DATA_ROAMING_BLOCKED"

    const-string v4, "data_roaming_blocked"

    invoke-static {v1, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "VOICE_ROAMING_ALLOWED"

    const-string v4, "voice_roaming_allowed"

    invoke-static {v1, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "VOICE_ROAMING_BLOCKED"

    const-string v4, "voice_roaming_blocked"

    invoke-static {v1, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "DATA_ROAMING_GUARD_ALLOWED"

    const-string v4, "data_roaming_guard_allowed"

    invoke-static {v1, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "DATA_ROAMING_GUARD_BLOCKED"

    const-string v4, "data_roaming_guard_blocked"

    invoke-static {v1, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "VOICE_ROAMING_GUARD_ALLOWED"

    const-string v4, "voice_roaming_guard_allowed"

    invoke-static {v1, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "VOICE_ROAMING_GUARD_BLOCKED"

    const-string v4, "voice_roaming_guard_blocked"

    invoke-static {v1, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "SMS_ROAMING_GUARD_ALLOWED"

    const-string v4, "sms_roaming_guard_allowed"

    invoke-static {v1, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsHelper;->setRoamingOptions(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method setLocaleData([BI)V
    .locals 12
    .parameter "data"
    .parameter "size"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 602
    iget-object v9, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 603
    .local v2, conf:Landroid/content/res/Configuration;
    iget-object v7, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 609
    .local v7, loc:Ljava/util/Locale;
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcBACKUPFlag:Z

    if-nez v9, :cond_1

    iget-boolean v9, v2, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v9, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget-object v9, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, availableLocales:[Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1, v10, p2}, Ljava/lang/String;-><init>([BII)V

    .line 614
    .local v8, localeCode:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .line 615
    .local v6, language:Ljava/lang/String;
    const/4 v9, 0x4

    if-le p2, v9, :cond_3

    new-instance v4, Ljava/lang/String;

    const/4 v9, 0x3

    invoke-direct {v4, p1, v9, v11}, Ljava/lang/String;-><init>([BII)V

    .line 616
    .local v4, country:Ljava/lang/String;
    :goto_1
    const/4 v7, 0x0

    .line 617
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v9, v1

    if-ge v5, v9, :cond_2

    .line 618
    aget-object v9, v1, v5

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 619
    new-instance v7, Ljava/util/Locale;

    .end local v7           #loc:Ljava/util/Locale;
    invoke-direct {v7, v6, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    .restart local v7       #loc:Ljava/util/Locale;
    :cond_2
    if-eqz v7, :cond_0

    .line 626
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 627
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 628
    .local v3, config:Landroid/content/res/Configuration;
    iput-object v7, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 630
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 632
    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 633
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v3           #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v9

    goto :goto_0

    .line 615
    .end local v4           #country:Ljava/lang/String;
    .end local v5           #i:I
    :cond_3
    const-string v4, ""

    goto :goto_1

    .line 617
    .restart local v4       #country:Ljava/lang/String;
    .restart local v5       #i:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method
