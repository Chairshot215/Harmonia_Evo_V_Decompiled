.class public Lcom/htc/sdm/receiver/SDMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SDMReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdm/receiver/SDMReceiver$UpdateRingtoneTitle;,
        Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;
    }
.end annotation


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final PREFIX:Ljava/lang/String; = "[SDMReceiver] "

.field private static final mExtStorage:Lcom/htc/sdm/util/SDMExtStorageUtil;


# instance fields
.field private m_CheckRingtoneChanged:Ljava/lang/Thread;

.field private m_UpdateRingtoneTitle:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/htc/sdm/util/SDMExtStorageUtil;

    invoke-direct {v0}, Lcom/htc/sdm/util/SDMExtStorageUtil;-><init>()V

    sput-object v0, Lcom/htc/sdm/receiver/SDMReceiver;->mExtStorage:Lcom/htc/sdm/util/SDMExtStorageUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/htc/sdm/receiver/SDMReceiver;->m_CheckRingtoneChanged:Ljava/lang/Thread;

    .line 53
    iput-object v0, p0, Lcom/htc/sdm/receiver/SDMReceiver;->m_UpdateRingtoneTitle:Ljava/lang/Thread;

    .line 1512
    return-void
.end method

.method static synthetic access$002(Lcom/htc/sdm/receiver/SDMReceiver;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/sdm/receiver/SDMReceiver;->m_CheckRingtoneChanged:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$102(Lcom/htc/sdm/receiver/SDMReceiver;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/sdm/receiver/SDMReceiver;->m_UpdateRingtoneTitle:Ljava/lang/Thread;

    return-object p1
.end method

.method private handleAddItemFromHub(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 186
    const-string v3, "SOUNDSET_EXTRA"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 187
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "SOUNDSET"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/htc/sdm/SoundSetParcelable;

    .line 188
    .local v1, ssp:Lcom/htc/sdm/SoundSetParcelable;
    const-string v3, "SOUNDSETCHILD"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 189
    .local v2, sspc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundSetParcelable;>;"
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 191
    invoke-direct {p0, p1, v1, v2}, Lcom/htc/sdm/receiver/SDMReceiver;->insertSoundSetFromParcelable(Landroid/content/Context;Lcom/htc/sdm/SoundSetParcelable;Ljava/util/ArrayList;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    if-eqz v1, :cond_0

    .line 194
    invoke-direct {p0, p1, v1}, Lcom/htc/sdm/receiver/SDMReceiver;->insertASoundFromParcelable(Landroid/content/Context;Lcom/htc/sdm/SoundSetParcelable;)V

    goto :goto_0
.end method

.method private handleNotifyFromHub(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 203
    const-string v12, "online_item_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, guid:Ljava/lang/String;
    const-string v12, "online_item_content_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 205
    .local v9, type:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 208
    .local v3, cr:Landroid/content/ContentResolver;
    const-string v12, "online_item_action"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 212
    .local v1, Action:I
    const/4 v12, 0x3

    if-eq v1, v12, :cond_0

    .line 263
    :goto_0
    return-void

    .line 216
    :cond_0
    const-string v12, "Soundset"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 219
    invoke-static {v9}, Lcom/htc/sdm/util/SDMUtil;->RefType2ID(Ljava/lang/String;)I

    move-result v10

    .line 220
    .local v10, typeid:I
    const-string v12, ""

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 221
    .local v7, sounddburi:Landroid/net/Uri;
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Lcom/htc/sdm/util/SDMDBUtil;->GetSoundUri(Landroid/content/Context;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 223
    .local v8, sounduri:Landroid/net/Uri;
    move-object/from16 v0, p1

    invoke-static {v0, v9, v8}, Lcom/htc/sdm/util/SDMUtil;->IsDefaultSound(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 226
    const/4 v12, -0x1

    const v13, 0x7f090091

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v0, v4, v9, v12, v13}, Lcom/htc/sdm/util/SDMUtil;->SendDeleteIntentToHub(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 233
    invoke-static {v3, v8}, Lcom/htc/sdm/util/SDMUtil;->deleteFileAndRemoveFromMediaStore(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 235
    :cond_2
    invoke-static {v10}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v10, v4, v14}, Lcom/htc/sdm/util/SDMDBUtil;->getSoundID(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 237
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 240
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v7, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 261
    .end local v7           #sounddburi:Landroid/net/Uri;
    .end local v8           #sounduri:Landroid/net/Uri;
    .end local v10           #typeid:I
    :cond_3
    :goto_1
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/htc/sdm/util/SDMUtil;->generateSDMStatusNotificationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 262
    const/4 v12, 0x0

    const-string v13, ""

    move-object/from16 v0, p1

    invoke-static {v0, v4, v9, v12, v13}, Lcom/htc/sdm/util/SDMUtil;->SendDeleteIntentToHub(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 245
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/htc/sdm/util/SDMUtil;->getCurSoundsetGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 248
    const/4 v12, -0x1

    const v13, 0x7f090091

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v0, v4, v9, v12, v13}, Lcom/htc/sdm/util/SDMUtil;->SendDeleteIntentToHub(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/htc/sdm/util/SDMDBUtil;->loadDefSoundListFromDBbyParentGUID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 253
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundParcelable;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sdm/SoundParcelable;

    .line 255
    .local v2, child:Lcom/htc/sdm/SoundParcelable;
    invoke-virtual {v2}, Lcom/htc/sdm/SoundParcelable;->getDlDbUri()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/htc/sdm/util/SDMUtil;->deleteFileAndRemoveFromMediaStore(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 256
    invoke-virtual {v2}, Lcom/htc/sdm/SoundParcelable;->getSoundUri()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v3, v12, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 258
    .end local v2           #child:Lcom/htc/sdm/SoundParcelable;
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v13}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "=\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 259
    .local v11, where:Ljava/lang/String;
    sget-object v12, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET:Landroid/net/Uri;

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v11, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private handleUpdateInfo(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 269
    const-string v11, "online_item_ids"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 270
    .local v3, guids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "online_item_content_type"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 272
    .local v8, type:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-nez v8, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 275
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/htc/sdm/util/SDMUtil;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, locale:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 278
    .local v7, tableuri:Landroid/net/Uri;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 281
    .local v2, guid:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 282
    .local v0, bundle:Landroid/os/Bundle;
    const-string v11, "SOUNDSET"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/htc/sdm/SoundSetParcelable;

    .line 288
    .local v6, ssp:Lcom/htc/sdm/SoundSetParcelable;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v12}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 289
    .local v10, where:Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v9, values:Landroid/content/ContentValues;
    sget-object v11, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->cat:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v11}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/htc/sdm/SoundSetParcelable;->getCat()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v11, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->locale:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v11}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v11, 0x0

    invoke-virtual {v1, v7, v9, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 295
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #guid:Ljava/lang/String;
    .end local v6           #ssp:Lcom/htc/sdm/SoundSetParcelable;
    .end local v9           #values:Landroid/content/ContentValues;
    .end local v10           #where:Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/htc/sdm/util/SDMUtil;->generateSDMStatusNotificationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private insertASoundFromParcelable(Landroid/content/Context;Lcom/htc/sdm/SoundSetParcelable;)V
    .locals 8
    .parameter "context"
    .parameter "soundset"

    .prologue
    const/4 v7, 0x0

    .line 408
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 409
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/htc/sdm/receiver/SDMReceiver;->mExtStorage:Lcom/htc/sdm/util/SDMExtStorageUtil;

    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getRefType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/sdm/util/SDMUtil;->RefType2ID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/htc/sdm/util/SDMExtStorageUtil;->regMediaStore(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 410
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/htc/sdm/SoundSetParcelable;->setLocalFileUri(Ljava/lang/String;)V

    .line 411
    invoke-static {p1}, Lcom/htc/sdm/util/SDMUtil;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/htc/sdm/SoundSetParcelable;->setLang(Ljava/lang/String;)V

    .line 413
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0, p2, v1, v7}, Lcom/htc/sdm/receiver/SDMReceiver;->insertSoundSet(Lcom/htc/sdm/SoundSetParcelable;Ljava/util/ArrayList;Ljava/util/Set;)V

    .line 418
    invoke-direct {p0, p2, v1}, Lcom/htc/sdm/receiver/SDMReceiver;->insertSoundSetInfo(Lcom/htc/sdm/SoundSetParcelable;Ljava/util/ArrayList;)V

    .line 421
    :try_start_0
    const-string v3, "com.htc.sdm.provider.SDMProvider"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    invoke-static {v7}, Lcom/htc/sdm/util/SDMUtil;->generateSDMStatusNotificationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 428
    return-void

    .line 422
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private insertSoundSet(Lcom/htc/sdm/SoundSetParcelable;Ljava/util/ArrayList;Ljava/util/Set;)V
    .locals 9
    .parameter "soundset"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sdm/SoundSetParcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, skipList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 304
    new-instance v0, Lcom/htc/sdm/provider/SoundSetDAO;

    invoke-direct {v0}, Lcom/htc/sdm/provider/SoundSetDAO;-><init>()V

    .line 305
    .local v0, soundsetDAO:Lcom/htc/sdm/provider/SoundSetDAO;
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getCat()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->cat:Ljava/lang/String;

    .line 307
    iput v8, v0, Lcom/htc/sdm/provider/SoundSetDAO;->downloadStatus:I

    .line 308
    iput v7, v0, Lcom/htc/sdm/provider/SoundSetDAO;->srcType:I

    .line 309
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getRefType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/sdm/util/SDMUtil;->RefType2ID(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    .line 310
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->version:Ljava/lang/String;

    .line 318
    const-string v2, ""

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->reldate:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getRelTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->rating_count:J

    .line 320
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getSize()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->size:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getLang()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->locale:Ljava/lang/String;

    .line 325
    if-eqz p3, :cond_1

    iget-object v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, where:Ljava/lang/String;
    iget v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    if-ne v7, v2, :cond_2

    .line 334
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SoundSetDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    :cond_2
    iget v2, v0, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    if-ne v8, v2, :cond_3

    .line 339
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SoundSetDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 342
    :cond_3
    const/4 v2, 0x3

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    if-eq v2, v3, :cond_4

    const/4 v2, 0x5

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    if-eq v2, v3, :cond_4

    const/4 v2, 0x7

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    if-eq v2, v3, :cond_4

    const/16 v2, 0x8

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    if-eq v2, v3, :cond_4

    const/4 v2, 0x6

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    if-eq v2, v3, :cond_4

    const/16 v2, 0x9

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    if-eq v2, v3, :cond_4

    const/16 v2, 0xa

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    if-ne v2, v3, :cond_5

    .line 347
    :cond_4
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SoundSetDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 350
    :cond_5
    const/4 v2, 0x4

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    if-ne v2, v3, :cond_0

    .line 352
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SoundSetDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private insertSoundSetFromParcelable(Landroid/content/Context;Lcom/htc/sdm/SoundSetParcelable;Ljava/util/ArrayList;)V
    .locals 13
    .parameter "context"
    .parameter "soundset"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/sdm/SoundSetParcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sdm/SoundSetParcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p3, soundsetchild:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundSetParcelable;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 434
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v5

    .line 435
    .local v5, p_guid:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p1}, Lcom/htc/sdm/util/SDMUtil;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, lang:Ljava/lang/String;
    invoke-virtual {p2, v3}, Lcom/htc/sdm/SoundSetParcelable;->setLang(Ljava/lang/String;)V

    .line 440
    const/4 v9, 0x0

    invoke-direct {p0, p2, v4, v9}, Lcom/htc/sdm/receiver/SDMReceiver;->insertSoundSet(Lcom/htc/sdm/SoundSetParcelable;Ljava/util/ArrayList;Ljava/util/Set;)V

    .line 443
    invoke-direct {p0, p2, v4}, Lcom/htc/sdm/receiver/SDMReceiver;->insertSoundSetInfo(Lcom/htc/sdm/SoundSetParcelable;Ljava/util/ArrayList;)V

    .line 446
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sdm/SoundSetParcelable;

    .line 448
    .local v6, ssp:Lcom/htc/sdm/SoundSetParcelable;
    sget-object v9, Lcom/htc/sdm/receiver/SDMReceiver;->mExtStorage:Lcom/htc/sdm/util/SDMExtStorageUtil;

    invoke-virtual {v6}, Lcom/htc/sdm/SoundSetParcelable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/htc/sdm/SoundSetParcelable;->getRefType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/sdm/util/SDMUtil;->RefType2ID(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v6}, Lcom/htc/sdm/SoundSetParcelable;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, p1, v10, v11, v12}, Lcom/htc/sdm/util/SDMExtStorageUtil;->regMediaStore(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 449
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/htc/sdm/SoundSetParcelable;->setLocalFileUri(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v6, v3}, Lcom/htc/sdm/SoundSetParcelable;->setLang(Ljava/lang/String;)V

    .line 451
    const/4 v9, 0x0

    invoke-direct {p0, v6, v4, v9}, Lcom/htc/sdm/receiver/SDMReceiver;->insertSoundSet(Lcom/htc/sdm/SoundSetParcelable;Ljava/util/ArrayList;Ljava/util/Set;)V

    .line 452
    invoke-direct {p0, v6, v4}, Lcom/htc/sdm/receiver/SDMReceiver;->insertSoundSetInfo(Lcom/htc/sdm/SoundSetParcelable;Ljava/util/ArrayList;)V

    .line 453
    new-instance v0, Lcom/htc/sdm/provider/SoundSetChildDAO;

    invoke-direct {v0}, Lcom/htc/sdm/provider/SoundSetChildDAO;-><init>()V

    .line 454
    .local v0, childDAO:Lcom/htc/sdm/provider/SoundSetChildDAO;
    invoke-virtual {v6}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    .line 455
    iput-object v5, v0, Lcom/htc/sdm/provider/SoundSetChildDAO;->PARENT_GUID:Ljava/lang/String;

    .line 456
    invoke-virtual {v6}, Lcom/htc/sdm/SoundSetParcelable;->getRefType()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    .line 457
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v10}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v10}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/htc/sdm/SoundSetParcelable;->getRefType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 459
    .local v8, where:Ljava/lang/String;
    sget-object v9, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_DEF_SOUNDSET_CHILD:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    sget-object v9, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    sget-object v9, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_DEF_SOUNDSET_CHILD:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SoundSetChildDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    sget-object v9, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SoundSetChildDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 466
    .end local v0           #childDAO:Lcom/htc/sdm/provider/SoundSetChildDAO;
    .end local v6           #ssp:Lcom/htc/sdm/SoundSetParcelable;
    .end local v7           #uri:Landroid/net/Uri;
    .end local v8           #where:Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v9, "com.htc.sdm.provider.SDMProvider"

    invoke-virtual {v1, v9, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :goto_1
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/htc/sdm/util/SDMUtil;->generateSDMStatusNotificationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 473
    return-void

    .line 467
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private insertSoundSetInfo(Lcom/htc/sdm/SoundSetParcelable;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "soundset"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sdm/SoundSetParcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, 0x0

    .line 364
    new-instance v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;

    invoke-direct {v0}, Lcom/htc/sdm/provider/SoundSetInfoDAO;-><init>()V

    .line 365
    .local v0, soundsetInfoDAO:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->name:Ljava/lang/String;

    .line 367
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->GUID:Ljava/lang/String;

    .line 368
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getAuth()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->author:Ljava/lang/String;

    .line 369
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getCorp()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->corp:Ljava/lang/String;

    .line 370
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->description:Ljava/lang/String;

    .line 371
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getRefType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/sdm/util/SDMUtil;->RefType2ID(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    .line 372
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getLang()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->lang:Ljava/lang/String;

    .line 374
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

    iget-object v3, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, where:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v3}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->lang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    const/4 v2, 0x1

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    if-ne v2, v3, :cond_1

    .line 380
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_INFO:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_INFO:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SoundSetInfoDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    const/4 v2, 0x2

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    if-ne v2, v3, :cond_2

    .line 385
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE_INFO:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_RINGTONE_INFO:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SoundSetInfoDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 388
    :cond_2
    const/4 v2, 0x3

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    if-eq v2, v3, :cond_3

    const/4 v2, 0x5

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    if-eq v2, v3, :cond_3

    const/4 v2, 0x7

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    if-eq v2, v3, :cond_3

    const/16 v2, 0x8

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    if-eq v2, v3, :cond_3

    const/4 v2, 0x6

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    if-eq v2, v3, :cond_3

    const/16 v2, 0x9

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    if-eq v2, v3, :cond_3

    const/16 v2, 0xa

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    if-ne v2, v3, :cond_4

    .line 393
    :cond_3
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION_INFO:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_NOTIFICATION_INFO:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SoundSetInfoDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 396
    :cond_4
    const/4 v2, 0x4

    iget v3, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    if-ne v2, v3, :cond_0

    .line 398
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM_INFO:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_ALARM_INFO:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SoundSetInfoDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public CopyToSDFail(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "entry"
    .parameter "dlUriStr"

    .prologue
    .line 968
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 971
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 972
    .local v1, values:Landroid/content/ContentValues;
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->downloaded:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 973
    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 975
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/htc/sdm/util/SDMUtil;->generateSDMStatusNotificationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 978
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 979
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 983
    const v2, 0x7f090059

    invoke-static {p1, v2}, Lcom/htc/sdm/util/SDMUtil;->showToast(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 988
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public ExecuteSaveToSD(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "dlUri"
    .parameter "refID"
    .parameter "dlfilename"
    .parameter "dlName"

    .prologue
    .line 997
    const/4 v7, 0x0

    .line 998
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1016
    .local v6, RMUri:Landroid/net/Uri;
    :try_start_0
    sget-object v0, Lcom/htc/sdm/receiver/SDMReceiver;->mExtStorage:Lcom/htc/sdm/util/SDMExtStorageUtil;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sdm/util/SDMExtStorageUtil;->WriteSoundToSDCard(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1026
    if-eqz v7, :cond_0

    .line 1028
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1031
    :cond_0
    :goto_0
    return-object v6

    .line 1019
    :catch_0
    move-exception v0

    .line 1026
    if-eqz v7, :cond_0

    .line 1028
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1026
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    .line 1028
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public SoundSetDLCompleteNotify(Landroid/content/Context;Lcom/htc/sdm/SoundSetParcelable;Landroid/content/Intent;I)V
    .locals 9
    .parameter "context"
    .parameter "parcelable"
    .parameter "detailIntent"
    .parameter "notificationid"

    .prologue
    .line 703
    :try_start_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 705
    .local v1, n:Landroid/app/Notification;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 707
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "Soudset_Type"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 708
    const-string v4, "DetailLabel"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090042

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090044

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090043

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 714
    const-string v4, "DetailParcel"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 715
    const-string v4, "DetailDescription"

    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v4, "DetailCreator"

    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getAuth()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v4, "DetailCreateDate"

    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v4, "DetailCategory"

    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getCat()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/htc/sdm/util/SDMUtil;->getCategoryString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v4, "DetailSize"

    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v4, "SoundSetName"

    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-virtual {p3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 724
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 725
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x1080082

    iput v4, v1, Landroid/app/Notification;->icon:I

    .line 726
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    .line 727
    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 731
    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 733
    .local v2, nGUIDHashCode:I
    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v2, p3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, p1, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 736
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #n:Landroid/app/Notification;
    .end local v2           #nGUIDHashCode:I
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public StartNotifyPage(Landroid/content/Context;Lcom/htc/sdm/SoundSetParcelable;I)V
    .locals 4
    .parameter "context"
    .parameter "parcelable"
    .parameter "refID"

    .prologue
    .line 1118
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1119
    .local v1, detailIntent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1121
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 1123
    const-class v2, Lcom/htc/sdm/activity/SoundSetDetailNotification;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1124
    const-string v2, "Soudset_Type"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1126
    packed-switch p3, :pswitch_data_0

    .line 1142
    :goto_0
    const-string v2, "DetailParcel"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1143
    const-string v2, "DetailDescription"

    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const-string v2, "DetailCreator"

    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getAuth()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const-string v2, "DetailCreateDate"

    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string v2, "DetailCategory"

    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getCat()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/htc/sdm/util/SDMUtil;->getCategoryString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v2, "DetailSize"

    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v2, "SoundSetName"

    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1158
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1160
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1162
    return-void

    .line 1129
    :pswitch_0
    const-string v2, "DetailLabel"

    const v3, 0x7f090042

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1132
    :pswitch_1
    const-string v2, "DetailLabel"

    const v3, 0x7f090043

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1135
    :pswitch_2
    const-string v2, "DetailLabel"

    const v3, 0x7f090044

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1153
    :cond_0
    const-class v2, Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1154
    const-string v2, "SDMListType"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1126
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public StartSyncService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1203
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.sdm.service.SDMService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1204
    .local v3, SDMServiceSoundsetIntent:Landroid/content/Intent;
    const-string v4, "com.htc.sdm.service.SDMService.listType"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1205
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1206
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.htc.sdm.service.SDMService"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1207
    .local v2, SDMServiceRingtoneIntent:Landroid/content/Intent;
    const-string v4, "com.htc.sdm.service.SDMService.listType"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1208
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1209
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.sdm.service.SDMService"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1210
    .local v1, SDMServiceNotiIntent:Landroid/content/Intent;
    const-string v4, "com.htc.sdm.service.SDMService.listType"

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1211
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1212
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.htc.sdm.service.SDMService"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v0, SDMServiceAlarmIntent:Landroid/content/Intent;
    const-string v4, "com.htc.sdm.service.SDMService.listType"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1214
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    .end local v0           #SDMServiceAlarmIntent:Landroid/content/Intent;
    .end local v1           #SDMServiceNotiIntent:Landroid/content/Intent;
    .end local v2           #SDMServiceRingtoneIntent:Landroid/content/Intent;
    .end local v3           #SDMServiceSoundsetIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1216
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0xa

    const/high16 v9, 0x1000

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, action:Ljava/lang/String;
    const-string v8, "com.htc.store.action.ADD_ITEM"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/htc/sdm/receiver/SDMReceiver;->handleAddItemFromHub(Landroid/content/Context;Landroid/content/Intent;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v8, "com.htc.store.action.NOTIFY_SDM"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/htc/sdm/receiver/SDMReceiver;->handleNotifyFromHub(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 67
    :cond_2
    const-string v8, "com.htc.store.action.GET_ONLINE_ITEMS_RESULT"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/htc/sdm/receiver/SDMReceiver;->handleUpdateInfo(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 82
    :cond_3
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "com.htc.sdm.action.FAKE_BOOT_COMPLETED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 90
    :cond_4
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.htc.sdm.service.SDMService"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, SDMServiceSoundsetIntent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v0           #SDMServiceSoundsetIntent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 98
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v3           #e:Ljava/lang/Exception;
    :cond_5
    const-string v8, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 109
    :cond_6
    const-string v8, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 111
    iget-object v8, p0, Lcom/htc/sdm/receiver/SDMReceiver;->m_CheckRingtoneChanged:Ljava/lang/Thread;

    if-nez v8, :cond_7

    .line 113
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;

    invoke-direct {v9, p0, p1}, Lcom/htc/sdm/receiver/SDMReceiver$CheckRingtoneChanged;-><init>(Lcom/htc/sdm/receiver/SDMReceiver;Landroid/content/Context;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v8, p0, Lcom/htc/sdm/receiver/SDMReceiver;->m_CheckRingtoneChanged:Ljava/lang/Thread;

    .line 114
    iget-object v8, p0, Lcom/htc/sdm/receiver/SDMReceiver;->m_CheckRingtoneChanged:Ljava/lang/Thread;

    invoke-virtual {v8, v10}, Ljava/lang/Thread;->setPriority(I)V

    .line 115
    iget-object v8, p0, Lcom/htc/sdm/receiver/SDMReceiver;->m_CheckRingtoneChanged:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 129
    :cond_7
    :goto_1
    const-string v8, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v9, 0x62

    if-ne v8, v9, :cond_0

    .line 131
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.htc.sdm.service.SDMSoundSetFromSDService"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, SDMSoundSetFromSDServiceIntent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 120
    .end local v1           #SDMSoundSetFromSDServiceIntent:Landroid/content/Intent;
    :cond_8
    iget-object v8, p0, Lcom/htc/sdm/receiver/SDMReceiver;->m_UpdateRingtoneTitle:Ljava/lang/Thread;

    if-nez v8, :cond_7

    .line 122
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/htc/sdm/receiver/SDMReceiver$UpdateRingtoneTitle;

    invoke-direct {v9, p0, p1}, Lcom/htc/sdm/receiver/SDMReceiver$UpdateRingtoneTitle;-><init>(Lcom/htc/sdm/receiver/SDMReceiver;Landroid/content/Context;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v8, p0, Lcom/htc/sdm/receiver/SDMReceiver;->m_UpdateRingtoneTitle:Ljava/lang/Thread;

    .line 123
    iget-object v8, p0, Lcom/htc/sdm/receiver/SDMReceiver;->m_UpdateRingtoneTitle:Ljava/lang/Thread;

    invoke-virtual {v8, v10}, Ljava/lang/Thread;->setPriority(I)V

    .line 124
    iget-object v8, p0, Lcom/htc/sdm/receiver/SDMReceiver;->m_UpdateRingtoneTitle:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 136
    :cond_9
    const-string v8, "com.htc.sdm.sync.START_AUTOSYNC_SERVICE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/htc/sdm/receiver/SDMReceiver;->StartSyncService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 148
    :cond_a
    const-string v8, "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.htc.sdm.service.SDMCWAddSoundService"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .restart local v0       #SDMServiceSoundsetIntent:Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 154
    .end local v0           #SDMServiceSoundsetIntent:Landroid/content/Intent;
    :cond_b
    const-string v8, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 156
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.htc.sdm.service.SDMApplySIESoundService"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v5, servicIntent:Landroid/content/Intent;
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 158
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 161
    .end local v5           #servicIntent:Landroid/content/Intent;
    :cond_c
    const-string v8, "com.htc.providers.media.DB_UPGRADE_COMPLETE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 165
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.htc.sdm.service.SDMDBMigrationService"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v4, migrationIntent:Landroid/content/Intent;
    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 169
    .end local v4           #migrationIntent:Landroid/content/Intent;
    :cond_d
    const-string v8, "com.htc.sdm.ADD_SOUND"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 171
    const-string v8, "SoundUri"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, uri:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.htc.sdm.service.SDMAddSound"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v6, sintent:Landroid/content/Intent;
    const-string v8, "SoundUri"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 175
    invoke-virtual {p1, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method
