.class public Lcom/htc/store/util/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/htc/store/util/MediaUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractSubItemDownloadUrl(Ljava/util/ArrayList;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter "audioItem"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/htc/store/module/vo/ItemItem;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, subitem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    if-nez p0, :cond_0

    .line 206
    sget-object v3, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "extractSubItemDownloadUrl - no this sub item, "

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    const-string v2, ", not need to extract url"

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :goto_0
    return v1

    .line 209
    :cond_0
    if-nez p1, :cond_1

    .line 210
    sget-object v3, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "extractSubItemDownloadUrl - audio item is null, "

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 211
    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    sget-object v3, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "extractSubItemDownloadUrl - the url is empty, "

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 216
    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p1, v0}, Lcom/htc/store/module/vo/ItemItem;->setOnlineContentURL(Ljava/lang/String;)V

    .line 219
    sget-object v3, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "extractSubItemDownloadUrl - the url is "

    aput-object v5, v4, v2

    aput-object v0, v4, v1

    const-string v2, ", "

    aput-object v2, v4, v6

    aput-object p2, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getAudioOrSoundsetTypeStringForSDM(I)Ljava/lang/String;
    .locals 7
    .parameter "contentType"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, result:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 141
    sget-object v1, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "unknown role "

    aput-object v3, v2, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :goto_0
    sget-object v1, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "getAudioTypeStringForSDM() "

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    return-object v0

    .line 129
    :pswitch_0
    const-string v0, "Soundset"

    .line 130
    goto :goto_0

    .line 132
    :pswitch_1
    const-string v0, "S_Ringtone"

    .line 133
    goto :goto_0

    .line 135
    :pswitch_2
    const-string v0, "S_Notify"

    .line 136
    goto :goto_0

    .line 138
    :pswitch_3
    const-string v0, "S_Alarm"

    .line 139
    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getAudioParcelable(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;IZ)Lcom/htc/sdm/SoundSetParcelable;
    .locals 12
    .parameter "context"
    .parameter "audioItem"
    .parameter "role"
    .parameter "hasFile"

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 291
    .local v0, result:Lcom/htc/sdm/SoundSetParcelable;
    if-eqz p2, :cond_0

    .line 292
    invoke-static {p2}, Lcom/htc/store/util/MediaUtils;->getAudioRoleStringForSDM(I)Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, type:Ljava/lang/String;
    :goto_0
    const/4 v11, 0x0

    .line 297
    .local v11, filePath:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 298
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/store/util/StorageUtils;->getAudioFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 299
    invoke-static {v11}, Lcom/htc/store/util/StorageUtils;->isExisted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 301
    sget-object v1, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    const/4 v3, 0x1

    const-string v4, " doesnt exist, return failed"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    const/4 v1, 0x0

    .line 317
    :goto_1
    return-object v1

    .line 294
    .end local v5           #type:Ljava/lang/String;
    .end local v11           #filePath:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v1

    invoke-static {v1}, Lcom/htc/store/util/MediaUtils;->getAudioOrSoundsetTypeStringForSDM(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #type:Ljava/lang/String;
    goto :goto_0

    .line 306
    .restart local v11       #filePath:Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/htc/sdm/SoundSetParcelable;

    .end local v0           #result:Lcom/htc/sdm/SoundSetParcelable;
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineGenres()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineTimeStampPublished()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineAuthor()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v11}, Lcom/htc/sdm/SoundSetParcelable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #result:Lcom/htc/sdm/SoundSetParcelable;
    move-object v1, v0

    .line 317
    goto :goto_1
.end method

.method public static getAudioParcelableBundle(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;IZ)Landroid/os/Bundle;
    .locals 3
    .parameter "context"
    .parameter "audioItem"
    .parameter "role"
    .parameter "hasFile"

    .prologue
    .line 321
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "SOUNDSET"

    invoke-static {p0, p1, p2, p3}, Lcom/htc/store/util/MediaUtils;->getAudioParcelable(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;IZ)Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 325
    return-object v0
.end method

.method public static getAudioRoleStringForSDM(I)Ljava/lang/String;
    .locals 5
    .parameter "role"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, result:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 117
    sget-object v1, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "unknown role "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :goto_0
    return-object v0

    .line 96
    :pswitch_0
    const-string v0, "S_Ringtone"

    .line 97
    goto :goto_0

    .line 99
    :pswitch_1
    const-string v0, "Calendar"

    .line 100
    goto :goto_0

    .line 102
    :pswitch_2
    const-string v0, "EMail"

    .line 103
    goto :goto_0

    .line 105
    :pswitch_3
    const-string v0, "Message"

    .line 106
    goto :goto_0

    .line 108
    :pswitch_4
    const-string v0, "S_Notify"

    .line 109
    goto :goto_0

    .line 111
    :pswitch_5
    const-string v0, "Task"

    .line 112
    goto :goto_0

    .line 114
    :pswitch_6
    const-string v0, "S_Alarm"

    .line 115
    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public static getSoundsetParcelableBundle(Landroid/content/Context;Lcom/htc/store/module/vo/SoundsetItem;Z)Landroid/os/Bundle;
    .locals 13
    .parameter "context"
    .parameter "soundsetItem"
    .parameter "hasFile"

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 335
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v7, result:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 337
    .local v1, audioItem:Lcom/htc/store/module/vo/ItemItem;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v2, audioParcelableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundSetParcelable;>;"
    const-string v11, "SOUNDSET"

    invoke-static {p0, p1, v12, v12}, Lcom/htc/store/util/MediaUtils;->getAudioParcelable(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;IZ)Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 341
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getRingtoneItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    .line 342
    if-eqz v1, :cond_0

    .line 343
    const/4 v11, 0x1

    invoke-static {p0, v1, v11, p2}, Lcom/htc/store/util/MediaUtils;->getAudioParcelable(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;IZ)Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v8

    .line 344
    .local v8, ringtoneParcelable:Lcom/htc/sdm/SoundSetParcelable;
    if-eqz v8, :cond_7

    .line 345
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v8           #ringtoneParcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getCalendarItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    .line 352
    if-eqz v1, :cond_1

    .line 353
    const/4 v11, 0x6

    invoke-static {p0, v1, v11, p2}, Lcom/htc/store/util/MediaUtils;->getAudioParcelable(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;IZ)Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v3

    .line 354
    .local v3, calendarParcelable:Lcom/htc/sdm/SoundSetParcelable;
    if-eqz v3, :cond_8

    .line 355
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v3           #calendarParcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_1
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getEmailItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    .line 362
    if-eqz v1, :cond_2

    .line 363
    const/4 v11, 0x5

    invoke-static {p0, v1, v11, p2}, Lcom/htc/store/util/MediaUtils;->getAudioParcelable(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;IZ)Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v4

    .line 364
    .local v4, emailParcelable:Lcom/htc/sdm/SoundSetParcelable;
    if-eqz v4, :cond_9

    .line 365
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v4           #emailParcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_2
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getMessageItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_3

    .line 373
    const/4 v11, 0x4

    invoke-static {p0, v1, v11, p2}, Lcom/htc/store/util/MediaUtils;->getAudioParcelable(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;IZ)Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v5

    .line 374
    .local v5, messageParcelable:Lcom/htc/sdm/SoundSetParcelable;
    if-eqz v5, :cond_a

    .line 375
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .end local v5           #messageParcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_3
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getNotificationItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    .line 382
    if-eqz v1, :cond_4

    .line 383
    const/4 v11, 0x3

    invoke-static {p0, v1, v11, p2}, Lcom/htc/store/util/MediaUtils;->getAudioParcelable(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;IZ)Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v6

    .line 384
    .local v6, notificationParcelable:Lcom/htc/sdm/SoundSetParcelable;
    if-eqz v6, :cond_b

    .line 385
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v6           #notificationParcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_4
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getTaskItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    .line 392
    if-eqz v1, :cond_5

    .line 393
    const/4 v11, 0x7

    invoke-static {p0, v1, v11, p2}, Lcom/htc/store/util/MediaUtils;->getAudioParcelable(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;IZ)Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v9

    .line 394
    .local v9, taskParcelable:Lcom/htc/sdm/SoundSetParcelable;
    if-eqz v9, :cond_c

    .line 395
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .end local v9           #taskParcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_5
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getAlarmItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    .line 402
    if-eqz v1, :cond_6

    .line 403
    const/4 v11, 0x2

    invoke-static {p0, v1, v11, p2}, Lcom/htc/store/util/MediaUtils;->getAudioParcelable(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;IZ)Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v0

    .line 404
    .local v0, alarmParcelable:Lcom/htc/sdm/SoundSetParcelable;
    if-eqz v0, :cond_d

    .line 405
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    .end local v0           #alarmParcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_6
    const-string v10, "SOUNDSETCHILD"

    invoke-virtual {v7, v10, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 414
    .end local v7           #result:Landroid/os/Bundle;
    :goto_0
    return-object v7

    .line 347
    .restart local v7       #result:Landroid/os/Bundle;
    .restart local v8       #ringtoneParcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_7
    sget-object v11, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const-string v12, "sendDownloadSoundsetCompleteIntentToSDM is cancelled by retrieving ringtone item"

    invoke-static {v11, v12}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v10

    .line 348
    goto :goto_0

    .line 357
    .end local v8           #ringtoneParcelable:Lcom/htc/sdm/SoundSetParcelable;
    .restart local v3       #calendarParcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_8
    sget-object v11, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const-string v12, "sendDownloadSoundsetCompleteIntentToSDM is cancelled by retrieving calendar item"

    invoke-static {v11, v12}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v10

    .line 358
    goto :goto_0

    .line 367
    .end local v3           #calendarParcelable:Lcom/htc/sdm/SoundSetParcelable;
    .restart local v4       #emailParcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_9
    sget-object v11, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const-string v12, "sendDownloadSoundsetCompleteIntentToSDM is cancelled by retrieving email item"

    invoke-static {v11, v12}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v10

    .line 368
    goto :goto_0

    .line 377
    .end local v4           #emailParcelable:Lcom/htc/sdm/SoundSetParcelable;
    .restart local v5       #messageParcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_a
    sget-object v11, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const-string v12, "sendDownloadSoundsetCompleteIntentToSDM is cancelled by retrieving message item"

    invoke-static {v11, v12}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v10

    .line 378
    goto :goto_0

    .line 387
    .end local v5           #messageParcelable:Lcom/htc/sdm/SoundSetParcelable;
    .restart local v6       #notificationParcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_b
    sget-object v11, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const-string v12, "sendDownloadSoundsetCompleteIntentToSDM is cancelled by retrieving notification item"

    invoke-static {v11, v12}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v10

    .line 388
    goto :goto_0

    .line 397
    .end local v6           #notificationParcelable:Lcom/htc/sdm/SoundSetParcelable;
    .restart local v9       #taskParcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_c
    sget-object v11, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const-string v12, "sendDownloadSoundsetCompleteIntentToSDM is cancelled by retrieving task item"

    invoke-static {v11, v12}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v10

    .line 398
    goto :goto_0

    .line 407
    .end local v9           #taskParcelable:Lcom/htc/sdm/SoundSetParcelable;
    .restart local v0       #alarmParcelable:Lcom/htc/sdm/SoundSetParcelable;
    :cond_d
    sget-object v11, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const-string v12, "sendDownloadSoundsetCompleteIntentToSDM is cancelled by retrieving alarm item"

    invoke-static {v11, v12}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v10

    .line 408
    goto :goto_0
.end method

.method public static isAudioItem(I)Z
    .locals 1
    .parameter "contentType"

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, result:Z
    packed-switch p0, :pswitch_data_0

    .line 88
    :goto_0
    return v0

    .line 78
    :pswitch_0
    const/4 v0, 0x1

    .line 79
    goto :goto_0

    .line 81
    :pswitch_1
    const/4 v0, 0x1

    .line 82
    goto :goto_0

    .line 84
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static parseSoundsetDownloadUrl(Lcom/htc/store/module/vo/SoundsetItem;Ljava/lang/String;)Z
    .locals 13
    .parameter "soundsetItem"
    .parameter "soundsetUrl"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 225
    if-nez p0, :cond_0

    .line 226
    sget-object v9, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const-string v10, "parseSoundsetDownloadUrl - soundsetItem is null"

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_0
    return v8

    .line 229
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 230
    sget-object v9, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const-string v10, "parseSoundsetDownloadUrl - soundsetUrl is empty"

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_1
    new-instance v5, Lcom/htc/store/module/json/SoundsetXMLParser;

    invoke-direct {v5}, Lcom/htc/store/module/json/SoundsetXMLParser;-><init>()V

    .line 235
    .local v5, parser:Lcom/htc/store/module/json/SoundsetXMLParser;
    :try_start_0
    invoke-virtual {v5, p1}, Lcom/htc/store/module/json/SoundsetXMLParser;->parse(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v5}, Lcom/htc/store/module/json/SoundsetXMLParser;->getAssetSound()Ljava/util/ArrayList;

    move-result-object v1

    .line 237
    .local v1, assetArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;>;"
    if-nez v1, :cond_2

    .line 238
    sget-object v9, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const-string v10, "parseSoundsetDownloadUrl - soundset list is null"

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    .end local v1           #assetArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;>;"
    :catch_0
    move-exception v3

    .line 283
    .local v3, ex:Ljava/lang/Exception;
    sget-object v9, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const-string v10, "parse soundset xml failed, "

    invoke-static {v9, v10, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 244
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v1       #assetArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;

    .line 245
    .local v0, asset:Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;
    iget-object v6, v0, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->refType:Ljava/lang/String;

    .line 246
    .local v6, type:Ljava/lang/String;
    iget-object v7, v0, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->url:Ljava/lang/String;

    .line 247
    .local v7, url:Ljava/lang/String;
    const/4 v2, 0x0

    .line 248
    .local v2, audioItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 249
    sget-object v9, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "parseSoundsetDownloadUrl - asset type is null, "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v0, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->name:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 252
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 253
    sget-object v9, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "parseSoundsetDownloadUrl - asset url is null, "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v0, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->name:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 256
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 257
    sget-object v9, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "parseSoundsetDownloadUrl - asset type is null, "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v0, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;->name:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 260
    :cond_5
    const-string v10, "S_Ringtone"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 261
    invoke-virtual {p0}, Lcom/htc/store/module/vo/SoundsetItem;->getRingtoneItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    .line 275
    :cond_6
    :goto_2
    if-nez v2, :cond_d

    .line 276
    sget-object v9, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "parseSoundsetDownloadUrl - audioItem is null, refType = "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 262
    :cond_7
    const-string v10, "Calendar"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 263
    invoke-virtual {p0}, Lcom/htc/store/module/vo/SoundsetItem;->getCalendarItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    goto :goto_2

    .line 264
    :cond_8
    const-string v10, "EMail"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 265
    invoke-virtual {p0}, Lcom/htc/store/module/vo/SoundsetItem;->getEmailItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    goto :goto_2

    .line 266
    :cond_9
    const-string v10, "Message"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 267
    invoke-virtual {p0}, Lcom/htc/store/module/vo/SoundsetItem;->getMessageItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    goto :goto_2

    .line 268
    :cond_a
    const-string v10, "S_Notify"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 269
    invoke-virtual {p0}, Lcom/htc/store/module/vo/SoundsetItem;->getNotificationItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    goto :goto_2

    .line 270
    :cond_b
    const-string v10, "Task"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 271
    invoke-virtual {p0}, Lcom/htc/store/module/vo/SoundsetItem;->getTaskItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    goto :goto_2

    .line 272
    :cond_c
    const-string v10, "S_Alarm"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 273
    invoke-virtual {p0}, Lcom/htc/store/module/vo/SoundsetItem;->getAlarmItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    goto :goto_2

    .line 279
    :cond_d
    invoke-virtual {v2, v7}, Lcom/htc/store/module/vo/ItemItem;->setOnlineContentURL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .end local v0           #asset:Lcom/htc/store/module/json/SoundsetXMLParser$AssetSound;
    .end local v2           #audioItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v6           #type:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :cond_e
    move v8, v9

    .line 281
    goto/16 :goto_0
.end method

.method public static parseSoundsetDownloadUrl(Lcom/htc/store/module/vo/SoundsetItem;Ljava/util/HashMap;)Z
    .locals 5
    .parameter "soundsetItem"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/store/module/vo/SoundsetItem;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, subItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 165
    if-nez p0, :cond_1

    .line 166
    sget-object v3, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const-string v4, "parseSoundsetDownloadUrl - soundsetItem is null"

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    :goto_0
    return v2

    .line 169
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 170
    :cond_2
    sget-object v3, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const-string v4, "parseSoundsetDownloadUrl - subitems is empty"

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_3
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 174
    .local v1, subitem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/store/module/vo/SoundsetItem;->getAlarmItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 175
    .local v0, audioItem:Lcom/htc/store/module/vo/ItemItem;
    const-string v3, "alarm"

    invoke-static {v1, v0, v3}, Lcom/htc/store/util/MediaUtils;->extractSubItemDownloadUrl(Ljava/util/ArrayList;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    const-string v3, "message"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #subitem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 178
    .restart local v1       #subitem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/store/module/vo/SoundsetItem;->getMessageItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 179
    const-string v3, "message"

    invoke-static {v1, v0, v3}, Lcom/htc/store/util/MediaUtils;->extractSubItemDownloadUrl(Ljava/util/ArrayList;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    const-string v3, "calendar"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #subitem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 182
    .restart local v1       #subitem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/store/module/vo/SoundsetItem;->getCalendarItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 183
    const-string v3, "calendar"

    invoke-static {v1, v0, v3}, Lcom/htc/store/util/MediaUtils;->extractSubItemDownloadUrl(Ljava/util/ArrayList;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    const-string v3, "ringtone"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #subitem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 186
    .restart local v1       #subitem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/store/module/vo/SoundsetItem;->getRingtoneItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 187
    const-string v3, "ringtone"

    invoke-static {v1, v0, v3}, Lcom/htc/store/util/MediaUtils;->extractSubItemDownloadUrl(Ljava/util/ArrayList;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #subitem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 190
    .restart local v1       #subitem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/store/module/vo/SoundsetItem;->getNotificationItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 191
    const-string v3, "notification"

    invoke-static {v1, v0, v3}, Lcom/htc/store/util/MediaUtils;->extractSubItemDownloadUrl(Ljava/util/ArrayList;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    const-string v3, "task"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #subitem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 194
    .restart local v1       #subitem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/store/module/vo/SoundsetItem;->getTaskItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 195
    const-string v3, "task"

    invoke-static {v1, v0, v3}, Lcom/htc/store/util/MediaUtils;->extractSubItemDownloadUrl(Ljava/util/ArrayList;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    const-string v3, "email"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #subitem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 198
    .restart local v1       #subitem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/store/module/vo/SoundsetItem;->getEmailItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 199
    const-string v3, "email"

    invoke-static {v1, v0, v3}, Lcom/htc/store/util/MediaUtils;->extractSubItemDownloadUrl(Ljava/util/ArrayList;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public static playAudio(Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/media/AudioManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;II)V
    .locals 8
    .parameter "uri"
    .parameter "resolver"
    .parameter "manager"
    .parameter "listener"
    .parameter "stream_type"
    .parameter "duration"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 29
    sget-object v3, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "playAudio - uri = "

    aput-object v5, v4, v7

    aput-object p0, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    if-nez p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    sget-object v3, Lcom/htc/store/util/MediaUtils;->sMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_2

    .line 33
    invoke-static {p2, p3}, Lcom/htc/store/util/MediaUtils;->stopPlayAudio(Landroid/media/AudioManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 34
    :cond_2
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v3, Lcom/htc/store/util/MediaUtils;->sMediaPlayer:Landroid/media/MediaPlayer;

    .line 38
    :try_start_0
    const-string v3, "r"

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 39
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 40
    .local v1, fd:Ljava/io/FileDescriptor;
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p2, p3, p4, p5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v3

    if-eq v3, v6, :cond_3

    .line 42
    sget-object v3, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "playAudio - request audio focus failed !!!"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_3
    sget-object v3, Lcom/htc/store/util/MediaUtils;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 44
    sget-object v3, Lcom/htc/store/util/MediaUtils;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 45
    sget-object v3, Lcom/htc/store/util/MediaUtils;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 48
    .local v0, ex:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const-string v4, "playAudio failed, "

    invoke-static {v3, v4, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 49
    const/4 v3, 0x0

    sput-object v3, Lcom/htc/store/util/MediaUtils;->sMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public static stopPlayAudio(Landroid/media/AudioManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 4
    .parameter "manager"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 54
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 57
    :cond_0
    :try_start_0
    sget-object v1, Lcom/htc/store/util/MediaUtils;->sMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 58
    sget-object v1, Lcom/htc/store/util/MediaUtils;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 59
    sget-object v1, Lcom/htc/store/util/MediaUtils;->sMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 60
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/store/util/MediaUtils;->sMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_1
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/store/util/MediaUtils;->TAG:Ljava/lang/String;

    const-string v2, "stopPlayAudio failed, "

    invoke-static {v1, v2, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 64
    sput-object v3, Lcom/htc/store/util/MediaUtils;->sMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method
