.class public Lcom/htc/store/provider/AccessHelper;
.super Ljava/lang/Object;
.source "AccessHelper.java"


# static fields
.field private static final MODE_UPDATE_ITEM_ALL:I = 0x0

.field private static final MODE_UPDATE_ITEM_DETAIL:I = 0x2

.field private static final MODE_UPDATE_ITEM_LIST:I = 0x1

.field private static final MODE_UPDATE_ITEM_ONLINE_ACTION_TYPE_ONCLICK:I = 0x3

.field private static final SORT_STRING_CAROUSEL_ORDER:Ljava/lang/String; = "online_order ASC"

.field private static final SORT_STRING_CATEGORY_ORDER:Ljava/lang/String; = "online_order ASC"

.field private static final SORT_STRING_COMMENT_ORDER:Ljava/lang/String; = "online_timestamp_last_update DESC"

.field private static final SORT_STRING_FEATURED_ORDER:Ljava/lang/String; = "online_order ASC"

.field private static final SORT_STRING_ITEM_ORDER:Ljava/lang/String; = "online_order ASC"

.field private static final SORT_STRING_MY_ACTIVITY:Ljava/lang/String; = "timestamp DESC"

.field private static final SORT_STRING_PROMO_ORDER:Ljava/lang/String; = "online_order ASC"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    .line 63
    return-void
.end method

.method private addOrUpdateAudioItem(Ljava/lang/String;Lcom/htc/store/module/vo/ItemItem;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "soundsetItemOnlineId"
    .parameter "item"
    .parameter "role"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/htc/store/module/vo/ItemItem;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, itemValuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p5, soundsetStructureValuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p6, toBeAddedProductId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2491
    if-eqz p2, :cond_4

    .line 2493
    const/4 v1, 0x0

    .line 2494
    .local v1, audioItemOnlineIdInDB:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2496
    .local v0, audioItemOnlineIdCandidate:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    .line 2499
    invoke-virtual {p0, v0}, Lcom/htc/store/provider/AccessHelper;->getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2501
    invoke-virtual {p6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2503
    invoke-virtual {p2}, Lcom/htc/store/module/vo/ItemItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2504
    invoke-virtual {p6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2505
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "addOrUpdateAudioItem : add "

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2515
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/htc/store/provider/AccessHelper;->getSoundsetItemIdByOnlineIdAndRole(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2516
    if-nez v1, :cond_3

    .line 2518
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2519
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "online_soundset_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    const-string v3, "online_audio_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    const-string v3, "online_audio_role"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2522
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2533
    .end local v0           #audioItemOnlineIdCandidate:Ljava/lang/String;
    .end local v1           #audioItemOnlineIdInDB:Ljava/lang/String;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-void

    .line 2507
    .restart local v0       #audioItemOnlineIdCandidate:Ljava/lang/String;
    .restart local v1       #audioItemOnlineIdInDB:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "addOrUpdateAudioItem : ignore "

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2511
    :cond_2
    invoke-virtual {p2}, Lcom/htc/store/module/vo/ItemItem;->toContentValuesDetailPartOnly()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/htc/store/provider/AccessHelper;->updateItemItemByOnlineId(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 2512
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "addOrUpdateAudioItem : update "

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2524
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2526
    invoke-direct {p0, p1, v0, p3}, Lcom/htc/store/provider/AccessHelper;->updateSoundsetRoleOnlineId(Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_1

    .line 2531
    .end local v0           #audioItemOnlineIdCandidate:Ljava/lang/String;
    .end local v1           #audioItemOnlineIdInDB:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/htc/store/provider/AccessHelper;->removeSoundsetStructureRoleBySoundsetOnlineId(Ljava/lang/String;I)I

    goto :goto_1
.end method

.method private findAllSTPInboxItemIds()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 1212
    const/4 v7, 0x0

    .line 1214
    .local v7, result:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/STPInbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/STPInbox;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1218
    :goto_0
    return-object v7

    .line 1215
    :catch_0
    move-exception v6

    .line 1216
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private findAudioItemsBySoundsetOnlineId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "onlineId"

    .prologue
    .line 1042
    const/4 v7, 0x0

    .line 1045
    .local v7, result:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/SoundsetStructure;->CONTENT_URI_BATCH_QUERY:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1050
    :goto_0
    return-object v7

    .line 1046
    :catch_0
    move-exception v6

    .line 1047
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private findCategoryTTLItem(JI)Landroid/database/Cursor;
    .locals 8
    .parameter "categoryId"
    .parameter "apiType"

    .prologue
    .line 1235
    const/4 v7, 0x0

    .line 1236
    .local v7, result:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rest_api_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1237
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "findCategoryTTLItem selection is "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1239
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/CategoryTTL;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/CategoryTTL;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1243
    :goto_0
    return-object v7

    .line 1240
    :catch_0
    move-exception v6

    .line 1241
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private findGetMoreTTLItem(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1261
    const/4 v7, 0x0

    .line 1262
    .local v7, result:Landroid/database/Cursor;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1263
    const-string v3, "key = ?"

    .line 1264
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "findGetMoreTTLItem selection is "

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1266
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/GetMoreTTL;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/GetMoreTTL;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1271
    .end local v3           #selection:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 1267
    .restart local v3       #selection:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1268
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private findItem(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "onlineId"

    .prologue
    .line 736
    const/4 v7, 0x0

    .line 738
    .local v7, result:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 739
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "findItem selection is "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Item;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 746
    :goto_0
    return-object v7

    .line 742
    :catch_0
    move-exception v6

    .line 743
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private findItemByPackageName(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "pkgName"

    .prologue
    .line 750
    const/4 v7, 0x0

    .line 752
    .local v7, result:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online_package_name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 753
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "findItemByPackageName selection is "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Item;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 760
    :goto_0
    return-object v7

    .line 756
    :catch_0
    move-exception v6

    .line 757
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private findItemTTLItem(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "onlineItemId"
    .parameter "apiType"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1247
    const/4 v7, 0x0

    .line 1248
    .local v7, result:Landroid/database/Cursor;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online_item_id = ? AND rest_api_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1250
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "findItemTTLItem selection is "

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1252
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/ItemTTL;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/ItemTTL;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1257
    .end local v3           #selection:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 1253
    .restart local v3       #selection:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1254
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private findMyActivityItemByItemContentTypeAndInstallStatus(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "contentType"
    .parameter "installStatus"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1432
    const/4 v7, 0x0

    .line 1433
    .local v7, result:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online_content_type = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1434
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "findMyActivityItemByItemContentTypeAndInstallStatus selection is "

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1437
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_item_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1441
    :goto_0
    return-object v7

    .line 1438
    :catch_0
    move-exception v6

    .line 1439
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v1, "findMyActivityItemByItemContentTypeAndInstallStatus query error "

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private findSimilarItemOnlineIdsInStructure(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "onlindId"

    .prologue
    .line 774
    const/4 v7, 0x0

    .line 775
    .local v7, result:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online_item_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 776
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "findSimilarItemOnlineIdsInStructure selection is "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 778
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/SimilarityStructure;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/SimilarityStructure;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 782
    :goto_0
    return-object v7

    .line 779
    :catch_0
    move-exception v6

    .line 780
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v1, "findSimilarItemIdsInStructure query error "

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private findSoundsetItemIdByOnlineIdAndRole(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "onlineId"
    .parameter "role"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1078
    const/4 v7, 0x0

    .line 1079
    .local v7, result:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online_soundset_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "online_audio_role"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1080
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "findSoundsetItemIdByOnlineIdAndRole selection is "

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1082
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/SoundsetStructure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_audio_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1086
    :goto_0
    return-object v7

    .line 1083
    :catch_0
    move-exception v6

    .line 1084
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v1, "findSoundsetItemIdByOnlineIdAndRole query error "

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private findSoundsetItemRolsByOnlineId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "onlineId"

    .prologue
    .line 1066
    const/4 v7, 0x0

    .line 1067
    .local v7, result:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online_soundset_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1068
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "findItemRolsByOnlineId selection is "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1070
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/SoundsetStructure;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/SoundsetStructure;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1074
    :goto_0
    return-object v7

    .line 1071
    :catch_0
    move-exception v6

    .line 1072
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private findSoundsetSubItemOnlineIds(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "onlineId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1054
    const/4 v7, 0x0

    .line 1055
    .local v7, result:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online_soundset_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1056
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "findItemRolsByOnlineId selection is "

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/SoundsetStructure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_audio_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1062
    :goto_0
    return-object v7

    .line 1059
    :catch_0
    move-exception v6

    .line 1060
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private generateFeaturedItemsSelection(J)Ljava/lang/String;
    .locals 2
    .parameter "categoryId"

    .prologue
    .line 3947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generatePromoItemsSelection(J)Ljava/lang/String;
    .locals 2
    .parameter "categoryId"

    .prologue
    .line 3951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCarouselItemsByGroupId(I)Ljava/util/ArrayList;
    .locals 8
    .parameter "group"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CarouselItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CarouselItem;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "getCarouselItems selection is "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Carousel;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Carousel;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 86
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 87
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {v6}, Lcom/htc/store/module/vo/CarouselItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/CarouselItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_1
    return-object v7
.end method

.method private getCommentItems(I)Ljava/util/ArrayList;
    .locals 3
    .parameter "amount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CommentItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CommentItem;>;"
    invoke-virtual {p0, p1}, Lcom/htc/store/provider/AccessHelper;->findCommentItems(I)Landroid/database/Cursor;

    move-result-object v0

    .line 542
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 543
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    invoke-static {v0}, Lcom/htc/store/module/vo/CommentItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/CommentItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 546
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 548
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 549
    const/4 v1, 0x0

    .line 551
    :cond_2
    return-object v1
.end method

.method private getLatestCommentItem()Lcom/htc/store/module/vo/CommentItem;
    .locals 3

    .prologue
    .line 526
    const/4 v1, 0x0

    .line 527
    .local v1, result:Lcom/htc/store/module/vo/CommentItem;
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/store/provider/AccessHelper;->getCommentItems(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 528
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CommentItem;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 529
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Lcom/htc/store/module/vo/CommentItem;
    check-cast v1, Lcom/htc/store/module/vo/CommentItem;

    .line 531
    .restart local v1       #result:Lcom/htc/store/module/vo/CommentItem;
    :cond_0
    return-object v1
.end method

.method private getMyActivityItemsWhichAreInstalled(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/MyActivityItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1512
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1513
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( status = 4 OR status = 12 ) AND online_content_type = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1516
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/MyActivity;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1517
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1518
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1519
    invoke-static {v6}, Lcom/htc/store/module/vo/MyActivityItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1521
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1523
    :cond_1
    return-object v7
.end method

.method private getSimilarItemOnlineIdsByOnlineId(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "onlineId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 811
    const/4 v1, 0x0

    .line 812
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/htc/store/provider/AccessHelper;->findSimilarItemOnlineIdsInStructure(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 813
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 814
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 815
    .restart local v1       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 816
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 818
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 821
    :cond_1
    return-object v1
.end method

.method private getSoundsetItemIdByOnlineIdAndRole(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "onlineId"
    .parameter "role"

    .prologue
    const/4 v5, 0x0

    .line 1090
    const/4 v1, 0x0

    .line 1091
    .local v1, result:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/htc/store/provider/AccessHelper;->findSoundsetItemIdByOnlineIdAndRole(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 1092
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1093
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1094
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1095
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1097
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "soundset structure data corrupted"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1100
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1103
    :cond_1
    return-object v1
.end method

.method private hasCarouselItem(ILjava/lang/String;)Z
    .locals 8
    .parameter "groupId"
    .parameter "onlineId"

    .prologue
    const/4 v4, 0x0

    .line 3933
    const/4 v7, 0x0

    .line 3934
    .local v7, result:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "online_id"

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

    .line 3935
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "hasCarouselItem selection is "

    aput-object v5, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3936
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Carousel;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Carousel;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3937
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3938
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3939
    const/4 v7, 0x1

    .line 3941
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3943
    :cond_1
    return v7
.end method

.method private hasItemIdInSTPInbox(Ljava/lang/String;)Z
    .locals 9
    .parameter "id"

    .prologue
    .line 1195
    const/4 v8, 0x0

    .line 1196
    .local v8, result:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online_item_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1198
    .local v3, selection:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/STPInbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/STPInbox;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1199
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1200
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    const/4 v8, 0x1

    .line 1203
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v8

    .line 1205
    :catch_0
    move-exception v7

    .line 1206
    .local v7, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private removeComment(JJ)I
    .locals 7
    .parameter "timeStampStart"
    .parameter "timeStampEnd"

    .prologue
    .line 2729
    const/4 v0, 0x0

    .line 2730
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online_timestamp_last_update >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "online_timestamp_last_update"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2731
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeComment selection is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2733
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/Comment;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2737
    :goto_0
    return v0

    .line 2734
    :catch_0
    move-exception v1

    .line 2735
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delet error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private removeCommentByItem(Ljava/lang/String;JJ)I
    .locals 7
    .parameter "id"
    .parameter "timeStampStart"
    .parameter "timeStampEnd"

    .prologue
    .line 2751
    const/4 v0, 0x0

    .line 2752
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online_timestamp_last_update >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "online_timestamp_last_update"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "online_item_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2753
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeComment selection is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2755
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/Comment;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2759
    :goto_0
    return v0

    .line 2756
    :catch_0
    move-exception v1

    .line 2757
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delet error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private removeCommentByV1Item(Ljava/lang/String;JJ)I
    .locals 7
    .parameter "id"
    .parameter "timeStampStart"
    .parameter "timeStampEnd"

    .prologue
    .line 2740
    const/4 v0, 0x0

    .line 2741
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online_timestamp_last_update >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "online_timestamp_last_update"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "online_v1_item_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2742
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeComment selection is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2744
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/Comment;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2748
    :goto_0
    return v0

    .line 2745
    :catch_0
    move-exception v1

    .line 2746
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delet error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private updateCarouselItems(Ljava/util/ArrayList;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CarouselItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3171
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CarouselItem;>;"
    const/4 v0, 0x0

    .line 3172
    .local v0, count:I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3173
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3174
    .local v2, size:I
    new-array v3, v2, [Landroid/content/ContentValues;

    .line 3175
    .local v3, valuesArray:[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3176
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/store/module/vo/CarouselItem;

    invoke-virtual {v4}, Lcom/htc/store/module/vo/CarouselItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v3, v1

    .line 3175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3178
    :cond_0
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/Carousel;->CONTENT_URI_BATCH_UPDATE:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 3180
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #valuesArray:[Landroid/content/ContentValues;
    :cond_1
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, " carousel items are updated"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3181
    return v0
.end method

.method private updateCategoryItemsWithoutParentId(Ljava/util/ArrayList;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CategoryItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3200
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    const/4 v0, 0x0

    .line 3201
    .local v0, count:I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3202
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3203
    .local v2, size:I
    new-array v3, v2, [Landroid/content/ContentValues;

    .line 3204
    .local v3, valuesArray:[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3205
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v4}, Lcom/htc/store/module/vo/CategoryItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v3, v1

    .line 3204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3207
    :cond_0
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/Category;->CONTENT_URI_BATCH_UPDATE_FILL_PARENT_ID:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 3209
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #valuesArray:[Landroid/content/ContentValues;
    :cond_1
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, " category items are updated"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3210
    return v0
.end method

.method private updateItemItems(ILandroid/net/Uri;Ljava/util/ArrayList;)I
    .locals 9
    .parameter "mode"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    const/4 v5, 0x2

    const/4 v8, 0x1

    .line 3263
    const/4 v0, 0x0

    .line 3264
    .local v0, count:I
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 3265
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3266
    .local v2, size:I
    new-array v3, v2, [Landroid/content/ContentValues;

    .line 3267
    .local v3, valuesArray:[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 3268
    if-nez p1, :cond_1

    .line 3269
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v4}, Lcom/htc/store/module/vo/ItemItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v3, v1

    .line 3267
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3270
    :cond_1
    if-ne p1, v8, :cond_2

    .line 3271
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v4}, Lcom/htc/store/module/vo/ItemItem;->toContentValuesListPartOnly()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_1

    .line 3272
    :cond_2
    if-ne p1, v5, :cond_3

    .line 3273
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v4}, Lcom/htc/store/module/vo/ItemItem;->toContentValuesDetailPartOnly()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_1

    .line 3274
    :cond_3
    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    .line 3275
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v4}, Lcom/htc/store/module/vo/ItemItem;->toContentValuesOnlineActionTypeOnClickPartOnly()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_1

    .line 3278
    :cond_4
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, p2, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 3280
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #valuesArray:[Landroid/content/ContentValues;
    :cond_5
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, " item items are updated"

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3281
    return v0
.end method

.method private updateSoundsetRoleOnlineId(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .parameter "soundsetOnlineId"
    .parameter "audioOnlineId"
    .parameter "role"

    .prologue
    .line 3777
    const/4 v0, 0x0

    .line 3779
    .local v0, result:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online_soundset_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "online_audio_role"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3780
    .local v1, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "updateSoundsetRoleOnlineId selection is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3781
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3782
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "online_audio_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3783
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/SoundsetStructure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3785
    return v0
.end method


# virtual methods
.method public addCarouselItems(Ljava/util/ArrayList;)I
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CarouselItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1936
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CarouselItem;>;"
    const/4 v2, 0x0

    .line 1937
    .local v2, insertedCount:I
    const/4 v6, 0x0

    .line 1938
    .local v6, updatedCount:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1939
    .local v4, toBeInsertedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1940
    .local v5, toBeUpdatedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CarouselItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/store/module/vo/CarouselItem;

    .line 1941
    .local v3, item:Lcom/htc/store/module/vo/CarouselItem;
    invoke-virtual {v3}, Lcom/htc/store/module/vo/CarouselItem;->getGroupId()I

    move-result v7

    invoke-virtual {v3}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/htc/store/provider/AccessHelper;->hasCarouselItem(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1943
    invoke-virtual {v3}, Lcom/htc/store/module/vo/CarouselItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1946
    :cond_0
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1950
    .end local v3           #item:Lcom/htc/store/module/vo/CarouselItem;
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/htc/store/provider/table/Carousel;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/content/ContentValues;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/ContentValues;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    .line 1951
    invoke-direct {p0, v5}, Lcom/htc/store/provider/AccessHelper;->updateCarouselItems(Ljava/util/ArrayList;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1956
    :goto_1
    sget-object v7, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, " is inserted, "

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, " is updated"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1958
    add-int v7, v2, v6

    return v7

    .line 1952
    :catch_0
    move-exception v0

    .line 1953
    .local v0, e:Ljava/lang/Exception;
    sget-object v7, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v8, "insert error "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public addCategoryItem(Lcom/htc/store/module/vo/CategoryItem;)J
    .locals 6
    .parameter "item"

    .prologue
    .line 2183
    const-wide/16 v1, -0x1

    .line 2185
    .local v1, result:J
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/Category;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/CategoryItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2190
    :goto_0
    return-wide v1

    .line 2186
    :catch_0
    move-exception v0

    .line 2187
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "addCategoryItem insert error "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public addCategoryItems(Ljava/util/ArrayList;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CategoryItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2167
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    const/4 v0, 0x0

    .line 2169
    .local v0, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2170
    .local v4, valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/store/module/vo/CategoryItem;

    .line 2171
    .local v3, item:Lcom/htc/store/module/vo/CategoryItem;
    invoke-virtual {v3}, Lcom/htc/store/module/vo/CategoryItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2174
    .end local v3           #item:Lcom/htc/store/module/vo/CategoryItem;
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/htc/store/provider/table/Category;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/ContentValues;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2179
    :goto_1
    return v0

    .line 2175
    :catch_0
    move-exception v1

    .line 2176
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v6, "insert error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public addCategoryTTLItem(Lcom/htc/store/module/vo/CategoryTTLItem;)J
    .locals 6
    .parameter "item"

    .prologue
    .line 2194
    const-wide/16 v1, 0x0

    .line 2196
    .local v1, id:J
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/CategoryTTL;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/CategoryTTLItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2200
    :goto_0
    return-wide v1

    .line 2197
    :catch_0
    move-exception v0

    .line 2198
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public addCommentItems(Ljava/util/ArrayList;)I
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CommentItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2003
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CommentItem;>;"
    const/4 v1, 0x0

    .line 2004
    .local v1, count:I
    const-wide/16 v9, 0x0

    .line 2005
    .local v9, updateBeforeAnchor:J
    const-wide/16 v7, 0x0

    .line 2006
    .local v7, updateAfterAnchor:J
    const/4 v6, 0x0

    .line 2011
    .local v6, shouldUpdate:Z
    invoke-direct/range {p0 .. p0}, Lcom/htc/store/provider/AccessHelper;->getLatestCommentItem()Lcom/htc/store/module/vo/CommentItem;

    move-result-object v5

    .line 2012
    .local v5, latestCachedItem:Lcom/htc/store/module/vo/CommentItem;
    if-eqz v5, :cond_0

    .line 2015
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/store/module/vo/CommentItem;

    invoke-virtual {v12}, Lcom/htc/store/module/vo/CommentItem;->getOnlineTimeStampLastUpdate()J

    move-result-wide v9

    .line 2016
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/store/module/vo/CommentItem;

    invoke-virtual {v12}, Lcom/htc/store/module/vo/CommentItem;->getOnlineTimeStampLastUpdate()J

    move-result-wide v7

    .line 2018
    :cond_0
    mul-long v12, v9, v7

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_1

    cmp-long v12, v9, v7

    if-ltz v12, :cond_1

    .line 2019
    const/4 v6, 0x1

    .line 2022
    :cond_1
    if-eqz v6, :cond_2

    .line 2024
    sget-object v12, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/htc/store/provider/AccessHelper;->removeComment(JJ)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, " comment is removed"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2027
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_4

    .line 2028
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2029
    .local v11, valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/store/module/vo/CommentItem;

    .line 2030
    .local v4, item:Lcom/htc/store/module/vo/CommentItem;
    invoke-virtual {v4}, Lcom/htc/store/module/vo/CommentItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2033
    .end local v4           #item:Lcom/htc/store/module/vo/CommentItem;
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v14, Lcom/htc/store/provider/table/Comment;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Landroid/content/ContentValues;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/ContentValues;

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2039
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v11           #valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_4
    :goto_1
    return v1

    .line 2034
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v11       #valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 2035
    .local v2, e:Ljava/lang/Exception;
    sget-object v12, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v13, "insert error "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14, v2}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public addCommentItemsByItem(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 17
    .parameter "onlineItemId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CommentItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2094
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CommentItem;>;"
    const/4 v7, 0x0

    .line 2095
    .local v7, count:I
    const-wide/16 v5, 0x0

    .line 2096
    .local v5, updateBeforeAnchor:J
    const-wide/16 v3, 0x0

    .line 2097
    .local v3, updateAfterAnchor:J
    const/4 v12, 0x0

    .line 2101
    .local v12, shouldUpdate:Z
    invoke-direct/range {p0 .. p0}, Lcom/htc/store/provider/AccessHelper;->getLatestCommentItem()Lcom/htc/store/module/vo/CommentItem;

    move-result-object v11

    .line 2102
    .local v11, latestCachedItem:Lcom/htc/store/module/vo/CommentItem;
    if-eqz v11, :cond_0

    .line 2105
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/vo/CommentItem;

    invoke-virtual {v1}, Lcom/htc/store/module/vo/CommentItem;->getOnlineTimeStampLastUpdate()J

    move-result-wide v5

    .line 2106
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/vo/CommentItem;

    invoke-virtual {v1}, Lcom/htc/store/module/vo/CommentItem;->getOnlineTimeStampLastUpdate()J

    move-result-wide v3

    .line 2108
    :cond_0
    mul-long v1, v5, v3

    const-wide/16 v14, 0x0

    cmp-long v1, v1, v14

    if-eqz v1, :cond_1

    cmp-long v1, v5, v3

    if-ltz v1, :cond_1

    .line 2109
    const/4 v12, 0x1

    .line 2112
    :cond_1
    if-eqz v12, :cond_2

    .line 2114
    sget-object v14, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v15, v1, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/store/provider/AccessHelper;->removeCommentByItem(Ljava/lang/String;JJ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v15, v16

    const/4 v1, 0x1

    const-string v2, " comment is removed"

    aput-object v2, v15, v1

    invoke-static {v14, v15}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2117
    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 2118
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2119
    .local v13, valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/store/module/vo/CommentItem;

    .line 2120
    .local v10, item:Lcom/htc/store/module/vo/CommentItem;
    invoke-virtual {v10}, Lcom/htc/store/module/vo/CommentItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2123
    .end local v10           #item:Lcom/htc/store/module/vo/CommentItem;
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v14, Lcom/htc/store/provider/table/Comment;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ContentValues;

    invoke-virtual {v2, v14, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 2129
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v13           #valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_4
    :goto_1
    return v7

    .line 2124
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v13       #valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v8

    .line 2125
    .local v8, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v2, "insert error "

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v2, v14, v8}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public addCommentItemsByV1Item(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 17
    .parameter "onlineV1ItemId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CommentItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2049
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CommentItem;>;"
    const/4 v7, 0x0

    .line 2050
    .local v7, count:I
    const-wide/16 v5, 0x0

    .line 2051
    .local v5, updateBeforeAnchor:J
    const-wide/16 v3, 0x0

    .line 2052
    .local v3, updateAfterAnchor:J
    const/4 v12, 0x0

    .line 2056
    .local v12, shouldUpdate:Z
    invoke-direct/range {p0 .. p0}, Lcom/htc/store/provider/AccessHelper;->getLatestCommentItem()Lcom/htc/store/module/vo/CommentItem;

    move-result-object v11

    .line 2057
    .local v11, latestCachedItem:Lcom/htc/store/module/vo/CommentItem;
    if-eqz v11, :cond_0

    .line 2060
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/vo/CommentItem;

    invoke-virtual {v1}, Lcom/htc/store/module/vo/CommentItem;->getOnlineTimeStampLastUpdate()J

    move-result-wide v5

    .line 2061
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/vo/CommentItem;

    invoke-virtual {v1}, Lcom/htc/store/module/vo/CommentItem;->getOnlineTimeStampLastUpdate()J

    move-result-wide v3

    .line 2063
    :cond_0
    mul-long v1, v5, v3

    const-wide/16 v14, 0x0

    cmp-long v1, v1, v14

    if-eqz v1, :cond_1

    cmp-long v1, v5, v3

    if-ltz v1, :cond_1

    .line 2064
    const/4 v12, 0x1

    .line 2067
    :cond_1
    if-eqz v12, :cond_2

    .line 2069
    sget-object v14, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v15, v1, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/store/provider/AccessHelper;->removeCommentByV1Item(Ljava/lang/String;JJ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v15, v16

    const/4 v1, 0x1

    const-string v2, " comment is removed"

    aput-object v2, v15, v1

    invoke-static {v14, v15}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2072
    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 2073
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2074
    .local v13, valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/store/module/vo/CommentItem;

    .line 2075
    .local v10, item:Lcom/htc/store/module/vo/CommentItem;
    invoke-virtual {v10}, Lcom/htc/store/module/vo/CommentItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2078
    .end local v10           #item:Lcom/htc/store/module/vo/CommentItem;
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v14, Lcom/htc/store/provider/table/Comment;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ContentValues;

    invoke-virtual {v2, v14, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 2084
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v13           #valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_4
    :goto_1
    return v7

    .line 2079
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v13       #valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v8

    .line 2080
    .local v8, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v2, "insert error "

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v2, v14, v8}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public addFeaturedItems(Ljava/util/ArrayList;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/FeaturedItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1984
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    const/4 v0, 0x0

    .line 1985
    .local v0, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1986
    .local v4, valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/store/module/vo/FeaturedItem;

    .line 1987
    .local v3, item:Lcom/htc/store/module/vo/FeaturedItem;
    invoke-virtual {v3}, Lcom/htc/store/module/vo/FeaturedItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1990
    .end local v3           #item:Lcom/htc/store/module/vo/FeaturedItem;
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/htc/store/provider/table/Featured;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/ContentValues;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1994
    :goto_1
    return v0

    .line 1991
    :catch_0
    move-exception v1

    .line 1992
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v6, "insert error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public addGetMoreMappingItem(Lcom/htc/store/module/vo/GetMoreMappingItem;)J
    .locals 6
    .parameter "item"

    .prologue
    .line 2536
    const-wide/16 v1, 0x0

    .line 2537
    .local v1, id:J
    if-eqz p1, :cond_0

    .line 2539
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/GetMoreMapping;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/GetMoreMappingItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2544
    :cond_0
    :goto_0
    return-wide v1

    .line 2540
    :catch_0
    move-exception v0

    .line 2541
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "insert error "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public addGetMoreTTLItem(Lcom/htc/store/module/vo/GetMoreTTLItem;)J
    .locals 6
    .parameter "item"

    .prologue
    .line 2214
    const-wide/16 v1, 0x0

    .line 2216
    .local v1, id:J
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/GetMoreTTL;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/GetMoreTTLItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2220
    :goto_0
    return-wide v1

    .line 2217
    :catch_0
    move-exception v0

    .line 2218
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public addImageCacheMappingItem(ILjava/lang/String;)J
    .locals 4
    .parameter "type"
    .parameter "url"

    .prologue
    .line 2548
    const-wide/16 v0, 0x0

    .line 2549
    .local v0, id:J
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2550
    new-instance v2, Lcom/htc/store/module/vo/ImageCacheMappingItem;

    invoke-direct {v2}, Lcom/htc/store/module/vo/ImageCacheMappingItem;-><init>()V

    .line 2551
    .local v2, item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    invoke-virtual {v2, p1}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setType(I)V

    .line 2552
    invoke-virtual {v2, p2}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setURL(Ljava/lang/String;)V

    .line 2553
    invoke-virtual {p0, v2}, Lcom/htc/store/provider/AccessHelper;->addImageCacheMappingItem(Lcom/htc/store/module/vo/ImageCacheMappingItem;)J

    move-result-wide v0

    .line 2555
    .end local v2           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    :cond_0
    return-wide v0
.end method

.method public addImageCacheMappingItem(Lcom/htc/store/module/vo/ImageCacheMappingItem;)J
    .locals 6
    .parameter "item"

    .prologue
    .line 2559
    const-wide/16 v1, 0x0

    .line 2560
    .local v1, id:J
    if-eqz p1, :cond_0

    .line 2562
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/ImageCacheMapping;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2567
    :cond_0
    :goto_0
    return-wide v1

    .line 2563
    :catch_0
    move-exception v0

    .line 2564
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "insert error "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public addItemIdToSTPInbox(Ljava/lang/String;)J
    .locals 7
    .parameter "itemId"

    .prologue
    .line 2572
    const-wide/16 v2, 0x0

    .line 2573
    .local v2, id:J
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2574
    invoke-direct {p0, p1}, Lcom/htc/store/provider/AccessHelper;->hasItemIdInSTPInbox(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2576
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2577
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "online_item_id"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/STPInbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 2584
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-wide v2

    .line 2579
    :catch_0
    move-exception v1

    .line 2580
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v5, "insert error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public addItemItem(Lcom/htc/store/module/vo/ItemItem;)J
    .locals 6
    .parameter "item"

    .prologue
    .line 2157
    const-wide/16 v1, 0x0

    .line 2159
    .local v1, id:J
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2163
    :goto_0
    return-wide v1

    .line 2160
    :catch_0
    move-exception v0

    .line 2161
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public addItemItems(Ljava/util/ArrayList;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2137
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    const/4 v0, 0x0

    .line 2139
    .local v0, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2140
    .local v4, valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/store/module/vo/ItemItem;

    .line 2141
    .local v3, item:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2144
    .end local v3           #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/ContentValues;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2149
    :goto_1
    return v0

    .line 2145
    :catch_0
    move-exception v1

    .line 2146
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v6, "insert error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public addItemTTLItem(Lcom/htc/store/module/vo/ItemTTLItem;)J
    .locals 6
    .parameter "item"

    .prologue
    .line 2204
    const-wide/16 v1, 0x0

    .line 2206
    .local v1, id:J
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/ItemTTL;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemTTLItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2210
    :goto_0
    return-wide v1

    .line 2207
    :catch_0
    move-exception v0

    .line 2208
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public addMyActivityItem(Lcom/htc/store/module/vo/MyActivityItem;)J
    .locals 6
    .parameter "item"

    .prologue
    .line 2225
    const-wide/16 v1, 0x0

    .line 2226
    .local v1, id:J
    if-eqz p1, :cond_0

    .line 2228
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/MyActivityItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2233
    :cond_0
    :goto_0
    return-wide v1

    .line 2229
    :catch_0
    move-exception v0

    .line 2230
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "insert error "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public addMyActivityItems(Ljava/util/ArrayList;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/MyActivityItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2237
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    const/4 v0, 0x0

    .line 2238
    .local v0, count:I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2239
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2240
    .local v4, valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/store/module/vo/MyActivityItem;

    .line 2241
    .local v3, item:Lcom/htc/store/module/vo/MyActivityItem;
    invoke-virtual {v3}, Lcom/htc/store/module/vo/MyActivityItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2244
    .end local v3           #item:Lcom/htc/store/module/vo/MyActivityItem;
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/ContentValues;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2249
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_1
    :goto_1
    return v0

    .line 2245
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v1

    .line 2246
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v6, "insert error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public addOrUpdateCategoryTTLItem(JIJ)Z
    .locals 8
    .parameter "categoryId"
    .parameter "apiType"
    .parameter "ttl"

    .prologue
    .line 3692
    const/4 v3, 0x0

    .line 3693
    .local v3, result:Z
    const-wide/16 v4, 0x3e8

    mul-long/2addr p4, v4

    .line 3694
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/store/provider/AccessHelper;->getCategoryTTLItem(JI)Lcom/htc/store/module/vo/CategoryTTLItem;

    move-result-object v2

    .line 3695
    .local v2, item:Lcom/htc/store/module/vo/CategoryTTLItem;
    if-nez v2, :cond_1

    .line 3696
    new-instance v2, Lcom/htc/store/module/vo/CategoryTTLItem;

    .end local v2           #item:Lcom/htc/store/module/vo/CategoryTTLItem;
    invoke-direct {v2}, Lcom/htc/store/module/vo/CategoryTTLItem;-><init>()V

    .line 3697
    .restart local v2       #item:Lcom/htc/store/module/vo/CategoryTTLItem;
    invoke-virtual {v2, p1, p2}, Lcom/htc/store/module/vo/CategoryTTLItem;->setCategoryId(J)V

    .line 3698
    invoke-virtual {v2, p3}, Lcom/htc/store/module/vo/CategoryTTLItem;->setRESTAPIType(I)V

    .line 3699
    invoke-virtual {v2, p4, p5}, Lcom/htc/store/module/vo/CategoryTTLItem;->setOnlineTTL(J)V

    .line 3700
    invoke-virtual {p0, v2}, Lcom/htc/store/provider/AccessHelper;->addCategoryTTLItem(Lcom/htc/store/module/vo/CategoryTTLItem;)J

    move-result-wide v0

    .line 3701
    .local v0, id:J
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "addCategoryTTLItem: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, ", "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, ", "

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3702
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 3708
    .end local v0           #id:J
    :goto_0
    return v3

    .line 3702
    .restart local v0       #id:J
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 3704
    .end local v0           #id:J
    :cond_1
    invoke-virtual {v2, p4, p5}, Lcom/htc/store/module/vo/CategoryTTLItem;->setOnlineTTL(J)V

    .line 3705
    invoke-virtual {p0, v2}, Lcom/htc/store/provider/AccessHelper;->updateCategoryTTLItem(Lcom/htc/store/module/vo/CategoryTTLItem;)Z

    move-result v3

    .line 3706
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "updateCategoryTTLItem: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, ", "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, ", "

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addOrUpdateGetMoreTTLItem(Ljava/lang/String;J)Z
    .locals 6
    .parameter "key"
    .parameter "ttl"

    .prologue
    .line 3746
    const/4 v3, 0x0

    .line 3747
    .local v3, result:Z
    const-wide/16 v4, 0x3e8

    mul-long/2addr p2, v4

    .line 3748
    invoke-virtual {p0, p1}, Lcom/htc/store/provider/AccessHelper;->getGetMoreTTLItem(Ljava/lang/String;)Lcom/htc/store/module/vo/GetMoreTTLItem;

    move-result-object v2

    .line 3749
    .local v2, item:Lcom/htc/store/module/vo/GetMoreTTLItem;
    if-nez v2, :cond_1

    .line 3750
    new-instance v2, Lcom/htc/store/module/vo/GetMoreTTLItem;

    .end local v2           #item:Lcom/htc/store/module/vo/GetMoreTTLItem;
    invoke-direct {v2}, Lcom/htc/store/module/vo/GetMoreTTLItem;-><init>()V

    .line 3751
    .restart local v2       #item:Lcom/htc/store/module/vo/GetMoreTTLItem;
    invoke-virtual {v2, p1}, Lcom/htc/store/module/vo/GetMoreTTLItem;->setKey(Ljava/lang/String;)V

    .line 3752
    invoke-virtual {v2, p2, p3}, Lcom/htc/store/module/vo/GetMoreTTLItem;->setOnlineTTL(J)V

    .line 3753
    invoke-virtual {p0, v2}, Lcom/htc/store/provider/AccessHelper;->addGetMoreTTLItem(Lcom/htc/store/module/vo/GetMoreTTLItem;)J

    move-result-wide v0

    .line 3754
    .local v0, id:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 3759
    .end local v0           #id:J
    :goto_0
    return v3

    .line 3754
    .restart local v0       #id:J
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 3756
    .end local v0           #id:J
    :cond_1
    invoke-virtual {v2, p2, p3}, Lcom/htc/store/module/vo/GetMoreTTLItem;->setOnlineTTL(J)V

    .line 3757
    invoke-virtual {p0, v2}, Lcom/htc/store/provider/AccessHelper;->updateGetMoreTTLItem(Lcom/htc/store/module/vo/GetMoreTTLItem;)Z

    move-result v3

    goto :goto_0
.end method

.method public addOrUpdateItemTTLItem(Ljava/lang/String;IJ)Z
    .locals 8
    .parameter "onlineItemId"
    .parameter "apiType"
    .parameter "ttl"

    .prologue
    .line 3719
    const/4 v3, 0x0

    .line 3720
    .local v3, result:Z
    const-wide/16 v4, 0x3e8

    mul-long/2addr p3, v4

    .line 3721
    invoke-virtual {p0, p1, p2}, Lcom/htc/store/provider/AccessHelper;->getItemTTLItem(Ljava/lang/String;I)Lcom/htc/store/module/vo/ItemTTLItem;

    move-result-object v2

    .line 3722
    .local v2, item:Lcom/htc/store/module/vo/ItemTTLItem;
    if-nez v2, :cond_1

    .line 3723
    new-instance v2, Lcom/htc/store/module/vo/ItemTTLItem;

    .end local v2           #item:Lcom/htc/store/module/vo/ItemTTLItem;
    invoke-direct {v2}, Lcom/htc/store/module/vo/ItemTTLItem;-><init>()V

    .line 3724
    .restart local v2       #item:Lcom/htc/store/module/vo/ItemTTLItem;
    invoke-virtual {v2, p1}, Lcom/htc/store/module/vo/ItemTTLItem;->setOnlineItemId(Ljava/lang/String;)V

    .line 3725
    invoke-virtual {v2, p2}, Lcom/htc/store/module/vo/ItemTTLItem;->setRESTAPIType(I)V

    .line 3726
    invoke-virtual {v2, p3, p4}, Lcom/htc/store/module/vo/ItemTTLItem;->setOnlineTTL(J)V

    .line 3727
    invoke-virtual {p0, v2}, Lcom/htc/store/provider/AccessHelper;->addItemTTLItem(Lcom/htc/store/module/vo/ItemTTLItem;)J

    move-result-wide v0

    .line 3728
    .local v0, id:J
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "addCategoryTTLItem: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-string v7, ", "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, ", "

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3729
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 3735
    .end local v0           #id:J
    :goto_0
    return v3

    .line 3729
    .restart local v0       #id:J
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 3731
    .end local v0           #id:J
    :cond_1
    invoke-virtual {v2, p3, p4}, Lcom/htc/store/module/vo/ItemTTLItem;->setOnlineTTL(J)V

    .line 3732
    invoke-virtual {p0, v2}, Lcom/htc/store/provider/AccessHelper;->updateItemTTLItem(Lcom/htc/store/module/vo/ItemTTLItem;)Z

    move-result v3

    .line 3733
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "updateItemTTLItem: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-string v7, ", "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, ", "

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addOrUpdateSoundset(Lcom/htc/store/module/vo/SoundsetItem;)I
    .locals 9
    .parameter "soundsetItem"

    .prologue
    .line 2281
    const/4 v7, 0x0

    .line 2283
    .local v7, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2284
    .local v4, itemValuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2285
    .local v5, soundsetStructureValuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getOnlineId()Ljava/lang/String;

    move-result-object v1

    .line 2286
    .local v1, soundsetItemOnlineId:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2297
    .local v6, toBeAddedProductId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/htc/store/provider/AccessHelper;->getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2298
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2304
    :goto_0
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getRingtoneItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/store/provider/AccessHelper;->addOrUpdateAudioItem(Ljava/lang/String;Lcom/htc/store/module/vo/ItemItem;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2306
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getAlarmItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    const/4 v3, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/store/provider/AccessHelper;->addOrUpdateAudioItem(Ljava/lang/String;Lcom/htc/store/module/vo/ItemItem;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2308
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getNotificationItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    const/4 v3, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/store/provider/AccessHelper;->addOrUpdateAudioItem(Ljava/lang/String;Lcom/htc/store/module/vo/ItemItem;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2310
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getMessageItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    const/4 v3, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/store/provider/AccessHelper;->addOrUpdateAudioItem(Ljava/lang/String;Lcom/htc/store/module/vo/ItemItem;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2312
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getEmailItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    const/4 v3, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/store/provider/AccessHelper;->addOrUpdateAudioItem(Ljava/lang/String;Lcom/htc/store/module/vo/ItemItem;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2314
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getCalendarItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    const/4 v3, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/store/provider/AccessHelper;->addOrUpdateAudioItem(Ljava/lang/String;Lcom/htc/store/module/vo/ItemItem;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2316
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getTaskItem()Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    const/4 v3, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/store/provider/AccessHelper;->addOrUpdateAudioItem(Ljava/lang/String;Lcom/htc/store/module/vo/ItemItem;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2471
    :try_start_0
    iget-object v2, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/store/provider/table/SoundsetStructure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 2473
    iget-object v2, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 2487
    :goto_1
    return v7

    .line 2300
    :cond_0
    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/store/module/vo/SoundsetItem;->toContentValuesDetailPartOnly()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/store/provider/AccessHelper;->updateItemItemByOnlineId(Ljava/lang/String;Landroid/content/ContentValues;)Z

    goto :goto_0

    .line 2474
    :catch_0
    move-exception v8

    .line 2475
    .local v8, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v2, "addSoundset error "

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v8}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public addPromoItems(Ljava/util/ArrayList;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/PromoItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1966
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    const/4 v0, 0x0

    .line 1967
    .local v0, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1968
    .local v4, valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/store/module/vo/PromoItem;

    .line 1969
    .local v3, item:Lcom/htc/store/module/vo/PromoItem;
    invoke-virtual {v3}, Lcom/htc/store/module/vo/PromoItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1972
    .end local v3           #item:Lcom/htc/store/module/vo/PromoItem;
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/htc/store/provider/table/Promo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/ContentValues;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1976
    :goto_1
    return v0

    .line 1973
    :catch_0
    move-exception v1

    .line 1974
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v6, "insert error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public addSimilarity(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 10
    .parameter "onlineId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2254
    .local p2, similarItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    const/4 v0, 0x0

    .line 2255
    .local v0, count:I
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2256
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2258
    .local v5, valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/store/module/vo/ItemItem;

    .line 2259
    .local v3, item:Lcom/htc/store/module/vo/ItemItem;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2260
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "online_item_id"

    invoke-virtual {v4, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    const-string v6, "online_similar_item_id"

    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2265
    .end local v3           #item:Lcom/htc/store/module/vo/ItemItem;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/htc/store/provider/table/SimilarityStructure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/ContentValues;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/ContentValues;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2271
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_1
    :goto_1
    sget-object v6, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, " are added into similarity table"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2273
    return v0

    .line 2266
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #valuesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v1

    .line 2267
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v7, "addSimilarity error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public clearCarousel()I
    .locals 6

    .prologue
    .line 2595
    const/4 v0, 0x0

    .line 2597
    .local v0, count:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/store/provider/table/Carousel;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2601
    :goto_0
    return v0

    .line 2598
    :catch_0
    move-exception v1

    .line 2599
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v3, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public clearCategory()I
    .locals 6

    .prologue
    .line 2763
    const/4 v0, 0x0

    .line 2765
    .local v0, count:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/store/provider/table/Category;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2769
    :goto_0
    return v0

    .line 2766
    :catch_0
    move-exception v1

    .line 2767
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v3, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public clearCategoryTTL()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2880
    const/4 v0, 0x0

    .line 2881
    .local v0, count:I
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "clearCategoryTTL"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2883
    :try_start_0
    iget-object v2, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/store/provider/table/CategoryTTL;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2884
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clearCategoryTTL count:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2888
    :goto_0
    return v0

    .line 2885
    :catch_0
    move-exception v1

    .line 2886
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v3, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public clearComment()I
    .locals 6

    .prologue
    .line 2663
    const/4 v0, 0x0

    .line 2665
    .local v0, count:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/store/provider/table/Comment;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2669
    :goto_0
    return v0

    .line 2666
    :catch_0
    move-exception v1

    .line 2667
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v3, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public clearFeatured()I
    .locals 6

    .prologue
    .line 2637
    const/4 v0, 0x0

    .line 2640
    .local v0, count:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/store/provider/table/Featured;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2644
    :goto_0
    return v0

    .line 2641
    :catch_0
    move-exception v1

    .line 2642
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v3, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public clearGetMoreMapping()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 3093
    const/4 v0, 0x0

    .line 3095
    .local v0, count:I
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "clearGetMoreMapping"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3097
    :try_start_0
    iget-object v2, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/store/provider/table/GetMoreMapping;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3098
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clearGetMoreMapping count:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3102
    :goto_0
    return v0

    .line 3099
    :catch_0
    move-exception v1

    .line 3100
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v3, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public clearGetMoreTTL()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 3142
    const/4 v0, 0x0

    .line 3144
    .local v0, count:I
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "clearGetMoreTTL"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3146
    :try_start_0
    iget-object v2, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/store/provider/table/GetMoreTTL;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3147
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clearGetMoreTTL count:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3151
    :goto_0
    return v0

    .line 3148
    :catch_0
    move-exception v1

    .line 3149
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v3, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public clearImageCacheMapping()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 3128
    const/4 v0, 0x0

    .line 3130
    .local v0, count:I
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "clearImageCacheMapping"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3132
    :try_start_0
    iget-object v2, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/store/provider/table/ImageCacheMapping;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3133
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clearImageCacheMapping count:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3137
    :goto_0
    return v0

    .line 3134
    :catch_0
    move-exception v1

    .line 3135
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v3, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public clearItem()I
    .locals 6

    .prologue
    .line 2812
    const/4 v0, 0x0

    .line 2814
    .local v0, count:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2819
    :goto_0
    return v0

    .line 2815
    :catch_0
    move-exception v1

    .line 2816
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v3, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public clearItemTTL()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2907
    const/4 v0, 0x0

    .line 2909
    .local v0, count:I
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "clearItemTTL"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2911
    :try_start_0
    iget-object v2, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/store/provider/table/ItemTTL;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2912
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clearItemTTL count:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2916
    :goto_0
    return v0

    .line 2913
    :catch_0
    move-exception v1

    .line 2914
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v3, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public clearMyActivity()I
    .locals 6

    .prologue
    .line 2921
    const/4 v0, 0x0

    .line 2923
    .local v0, count:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2927
    :goto_0
    return v0

    .line 2924
    :catch_0
    move-exception v1

    .line 2925
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v3, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public clearPromo()I
    .locals 6

    .prologue
    .line 2609
    const/4 v0, 0x0

    .line 2612
    .local v0, count:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/store/provider/table/Promo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2617
    :goto_0
    return v0

    .line 2613
    :catch_0
    move-exception v1

    .line 2614
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v3, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public findAllItemItems()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 698
    const/4 v7, 0x0

    .line 700
    .local v7, result:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Item;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "online_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 705
    :goto_0
    return-object v7

    .line 701
    :catch_0
    move-exception v6

    .line 702
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public findAllItemItemsByCategory(J)Landroid/database/Cursor;
    .locals 8
    .parameter "categoryId"

    .prologue
    .line 723
    const/4 v7, 0x0

    .line 724
    .local v7, result:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 725
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "findAllItemItemsByCategory selection is "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Item;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 732
    :goto_0
    return-object v7

    .line 728
    :catch_0
    move-exception v6

    .line 729
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public findCategoryItemsByParentId(J)Landroid/database/Cursor;
    .locals 8
    .parameter "categoryId"

    .prologue
    const/4 v2, 0x7

    .line 235
    const/4 v7, 0x0

    .line 238
    .local v7, result:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parent_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "online_action_type_on_click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "online_action_on_click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "online_action_type_on_click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "findCategoryItems selection is "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Category;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Category;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 258
    :goto_0
    return-object v7

    .line 254
    :catch_0
    move-exception v6

    .line 255
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public findCategoryItemsByParentIdAndSkipInvalidatedItems(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 19
    .parameter "context"
    .parameter "categoryId"

    .prologue
    .line 269
    const/16 v18, 0x0

    .line 272
    .local v18, result:Landroid/database/Cursor;
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/provider/AccessHelper;->findCategoryItemsByParentId(J)Landroid/database/Cursor;

    move-result-object v13

    .line 273
    .local v13, itemCursor:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 274
    .local v16, packageNamesInIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_6

    .line 276
    new-instance v16, Ljava/util/ArrayList;

    .end local v16           #packageNamesInIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .restart local v16       #packageNamesInIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 278
    const/16 v3, 0x8

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 279
    const/16 v3, 0xb

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 280
    .local v14, packageName:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 281
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    :cond_1
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "be careful, intent trigger without packagename"

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 288
    .end local v14           #packageName:Ljava/lang/String;
    :cond_2
    const/16 v17, 0x0

    .line 289
    .local v17, packageNamesToBeIgnored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v16, :cond_4

    .line 290
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #packageNamesToBeIgnored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .restart local v17       #packageNamesToBeIgnored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 292
    .restart local v14       #packageName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/htc/store/util/CommonUtils;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 293
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    const/4 v5, 0x1

    const-string v7, " is going to be ignored"

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 299
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #packageName:Ljava/lang/String;
    :cond_4
    if-eqz v17, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 305
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 306
    .local v9, amountToBeIgnored:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online_component_package_name != \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 307
    .local v15, packageNameCheckSelection:Ljava/lang/String;
    const/4 v11, 0x1

    .local v11, i:I
    :goto_2
    if-ge v11, v9, :cond_5

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND online_component_package_name != \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 307
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 311
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parent_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "online_action_type_on_click"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "online_action_on_click"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != \'\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "online_action_type_on_click"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "findCategoryItemsByParentIdAndSkipInvalidatedItems selection is "

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/Category;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/store/provider/table/Category;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "online_order ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 333
    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 339
    .end local v6           #selection:Ljava/lang/String;
    .end local v9           #amountToBeIgnored:I
    .end local v11           #i:I
    .end local v15           #packageNameCheckSelection:Ljava/lang/String;
    .end local v17           #packageNamesToBeIgnored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :goto_4
    return-object v18

    .line 329
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v9       #amountToBeIgnored:I
    .restart local v11       #i:I
    .restart local v15       #packageNameCheckSelection:Ljava/lang/String;
    .restart local v17       #packageNamesToBeIgnored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 330
    .local v10, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v10}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 335
    .end local v6           #selection:Ljava/lang/String;
    .end local v9           #amountToBeIgnored:I
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #i:I
    .end local v15           #packageNameCheckSelection:Ljava/lang/String;
    :cond_7
    move-object/from16 v18, v13

    goto :goto_4
.end method

.method public findCommentItems(I)Landroid/database/Cursor;
    .locals 10
    .parameter "amount"

    .prologue
    .line 511
    const/4 v8, 0x0

    .line 512
    .local v8, result:Landroid/database/Cursor;
    const-string v7, ""

    .line 513
    .local v7, limitConstrain:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 517
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Comment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Comment;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "online_timestamp_last_update DESC"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 522
    :goto_0
    return-object v8

    .line 518
    :catch_0
    move-exception v6

    .line 519
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public findCommentItemsByFriend(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "id"

    .prologue
    .line 578
    const/4 v7, 0x0

    .line 580
    .local v7, result:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online_friend_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "findCommentItemsByFriend selection is "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Comment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Comment;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_timestamp_last_update DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 588
    :goto_0
    return-object v7

    .line 584
    :catch_0
    move-exception v6

    .line 585
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public findCommentItemsByItem(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "id"

    .prologue
    .line 647
    const/4 v7, 0x0

    .line 649
    .local v7, result:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online_item_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 650
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "findCommentItemsByItem selection is "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Comment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Comment;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_timestamp_last_update DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 657
    :goto_0
    return-object v7

    .line 653
    :catch_0
    move-exception v6

    .line 654
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public findCommentItemsByV1Item(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "id"

    .prologue
    .line 613
    const/4 v7, 0x0

    .line 615
    .local v7, result:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online_v1_item_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 616
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "findCommentItemsByV1Item selection is "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Comment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Comment;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_timestamp_last_update DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 623
    :goto_0
    return-object v7

    .line 619
    :catch_0
    move-exception v6

    .line 620
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public findItemItems()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 686
    const/4 v7, 0x0

    .line 688
    .local v7, result:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "status = 0"

    .line 689
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Item;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 694
    .end local v3           #selection:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 690
    :catch_0
    move-exception v6

    .line 691
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public findItemItemsByCategory(J)Landroid/database/Cursor;
    .locals 8
    .parameter "categoryId"

    .prologue
    const/4 v4, 0x0

    .line 709
    const/4 v7, 0x0

    .line 710
    .local v7, result:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 712
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "findItemItemsByCategory selection is "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 714
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Item;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 719
    :goto_0
    return-object v7

    .line 715
    :catch_0
    move-exception v6

    .line 716
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public findMyActivityItems()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 1363
    const/4 v7, 0x0

    .line 1365
    .local v7, result:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/MyActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "timestamp DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1369
    :goto_0
    return-object v7

    .line 1366
    :catch_0
    move-exception v6

    .line 1367
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public findMyActivityItems(I)Landroid/database/Cursor;
    .locals 8
    .parameter "type"

    .prologue
    .line 1373
    const/4 v7, 0x0

    .line 1374
    .local v7, result:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1375
    .local v3, selection:Ljava/lang/String;
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1376
    const-string v3, "status = 10"

    .line 1383
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/MyActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "timestamp DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1387
    :goto_1
    return-object v7

    .line 1377
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1378
    const-string v3, "status = 4"

    goto :goto_0

    .line 1380
    :cond_1
    const-string v3, "online_is_purchased = 1"

    goto :goto_0

    .line 1384
    :catch_0
    move-exception v6

    .line 1385
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public findMyActivityItemsByFilter(I)Landroid/database/Cursor;
    .locals 8
    .parameter "filterType"

    .prologue
    .line 1391
    const/4 v7, 0x0

    .line 1392
    .local v7, result:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1393
    .local v3, selection:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1405
    :goto_0
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/MyActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "timestamp DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1409
    :goto_1
    return-object v7

    .line 1397
    :pswitch_1
    const-string v3, "status = 4 AND online_is_purchased = 1"

    .line 1399
    goto :goto_0

    .line 1401
    :pswitch_2
    const-string v3, "status = 10"

    goto :goto_0

    .line 1406
    :catch_0
    move-exception v6

    .line 1407
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public findMyActivityItemsByKeyword(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 9
    .parameter "keyword"

    .prologue
    .line 1413
    const/4 v7, 0x0

    .line 1414
    .local v7, result:Landroid/database/Cursor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1415
    .local v8, sb:Ljava/lang/StringBuilder;
    const-string v0, "item_label"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NOT NULL AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    const-string v0, "item_label"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1418
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "!"

    const-string v2, "!!"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%"

    const-string v2, "!%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "!_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1420
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    const-string v0, "item_label"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'!\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/MyActivity;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "timestamp DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1428
    :goto_0
    return-object v7

    .line 1425
    :catch_0
    move-exception v6

    .line 1426
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public findSimilarItemsByOnlineId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "onlineId"

    .prologue
    .line 764
    const/4 v7, 0x0

    .line 766
    .local v7, result:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/SimilarityStructure;->CONTENT_URI_BATCH_QUERY:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Item;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 770
    :goto_0
    return-object v7

    .line 767
    :catch_0
    move-exception v6

    .line 768
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v1, "findSimilarItemsByOnlineId query error "

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getAllCategoryIconURLs()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 358
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Category;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Category;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 360
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 361
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 363
    .local v8, url:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 367
    .end local v8           #url:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 370
    const/4 v7, 0x0

    .line 372
    :cond_3
    return-object v7
.end method

.method public getAllCategoryItems()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CategoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 343
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Category;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Category;->PROJECTION:[Ljava/lang/String;

    const-string v5, "online_order ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 345
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 346
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {v6}, Lcom/htc/store/module/vo/CategoryItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/CategoryItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 352
    const/4 v7, 0x0

    .line 354
    :cond_2
    return-object v7
.end method

.method public getAllFeaturedItems()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/FeaturedItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 181
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Featured;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Featured;->PROJECTION:[Ljava/lang/String;

    const-string v5, "online_order ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 183
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 184
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {v6}, Lcom/htc/store/module/vo/FeaturedItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/FeaturedItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 190
    const/4 v7, 0x0

    .line 192
    :cond_2
    return-object v7
.end method

.method public getAllItemIconURLs()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 982
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 983
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/store/provider/AccessHelper;->findAllItemItems()Landroid/database/Cursor;

    move-result-object v0

    .line 984
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 985
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 986
    const/16 v3, 0x8

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 987
    .local v2, url:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 988
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 991
    .end local v2           #url:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 993
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 994
    const/4 v1, 0x0

    .line 996
    :cond_3
    return-object v1
.end method

.method public getAllItemItems()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 857
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    invoke-virtual {p0}, Lcom/htc/store/provider/AccessHelper;->findAllItemItems()Landroid/database/Cursor;

    move-result-object v0

    .line 859
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 860
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 861
    invoke-static {v0}, Lcom/htc/store/module/vo/ItemItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 863
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 865
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 866
    const/4 v1, 0x0

    .line 868
    :cond_2
    return-object v1
.end method

.method public getAllItemItemsByCategory(J)Ljava/util/ArrayList;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 890
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 891
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/store/provider/AccessHelper;->findAllItemItemsByCategory(J)Landroid/database/Cursor;

    move-result-object v0

    .line 892
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 893
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 894
    invoke-static {v0}, Lcom/htc/store/module/vo/ItemItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 896
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 898
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 899
    const/4 v1, 0x0

    .line 901
    :cond_2
    return-object v1
.end method

.method public getAllItemOnlineIds()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 962
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 964
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "online_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "online_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 966
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 967
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 968
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 972
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 973
    .local v7, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 975
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 976
    const/4 v8, 0x0

    .line 978
    :cond_1
    return-object v8

    .line 970
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getAllItemOnlineIdsByCategoryId(J)Ljava/util/ArrayList;
    .locals 9
    .parameter "categoryId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 918
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 920
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getItemOnlineIdsByCategoryId selection is "

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 922
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "online_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 924
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 925
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 926
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 930
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 931
    .local v7, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 933
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 934
    const/4 v8, 0x0

    .line 936
    :cond_1
    return-object v8

    .line 928
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getAllItemOnlineIdsWithoutCategoryId()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 940
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 941
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "category_id IS NULL OR category_id = 0"

    .line 942
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getAllItemOnlineIdsWithoutCategoryId selection is "

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 944
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 946
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 947
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 948
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 952
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 953
    .local v7, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 955
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 956
    const/4 v8, 0x0

    .line 958
    :cond_1
    return-object v8

    .line 950
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getAllPromoItems()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/PromoItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 110
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Promo;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Promo;->PROJECTION:[Ljava/lang/String;

    const-string v5, "online_order ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 112
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 113
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {v6}, Lcom/htc/store/module/vo/PromoItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/PromoItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 119
    const/4 v7, 0x0

    .line 121
    :cond_2
    return-object v7
.end method

.method public getAllSTPInboxItemIds()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1223
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/htc/store/provider/AccessHelper;->findAllSTPInboxItemIds()Landroid/database/Cursor;

    move-result-object v0

    .line 1224
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1225
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1226
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1228
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1230
    :cond_1
    return-object v1
.end method

.method public getCategoryItemByOnlineId(Ljava/lang/String;)Lcom/htc/store/module/vo/CategoryItem;
    .locals 9
    .parameter "onlineId"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 468
    const/4 v7, 0x0

    .line 469
    .local v7, item:Lcom/htc/store/module/vo/CategoryItem;
    const-string v3, "online_item_id = ?"

    .line 470
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "getCategoryItemByOnlineId select is "

    aput-object v2, v1, v5

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "getCategoryItemByOnlineId onlineId is "

    aput-object v2, v1, v5

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Category;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Category;->PROJECTION:[Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 473
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 474
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-static {v6}, Lcom/htc/store/module/vo/CategoryItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/CategoryItem;

    move-result-object v7

    .line 477
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 479
    :cond_1
    return-object v7
.end method

.method public getCategoryItemByParentIdAndOnlineId(JLjava/lang/String;)Lcom/htc/store/module/vo/CategoryItem;
    .locals 9
    .parameter "categoryId"
    .parameter "onlineId"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 483
    const/4 v7, 0x0

    .line 484
    .local v7, item:Lcom/htc/store/module/vo/CategoryItem;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parent_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "online_item_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "getCategoryItemByParentIdAndOnlineId select is "

    aput-object v2, v1, v5

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "getCategoryItemByParentIdAndOnlineId onlineId is "

    aput-object v2, v1, v5

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Category;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Category;->PROJECTION:[Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    aput-object p3, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 488
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 489
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    invoke-static {v6}, Lcom/htc/store/module/vo/CategoryItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/CategoryItem;

    move-result-object v7

    .line 492
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_1
    return-object v7
.end method

.method public getCategoryItemsByParentId(J)Ljava/util/ArrayList;
    .locals 3
    .parameter "categoryId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CategoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/store/provider/AccessHelper;->findCategoryItemsByParentId(J)Landroid/database/Cursor;

    move-result-object v0

    .line 386
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 387
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    invoke-static {v0}, Lcom/htc/store/module/vo/CategoryItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/CategoryItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 393
    const/4 v1, 0x0

    .line 395
    :cond_2
    return-object v1
.end method

.method public getCategoryOnlineIconURLsByParentId(J)Ljava/util/ArrayList;
    .locals 10
    .parameter "categoryId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 421
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parent_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getCategoryOnlineIconURLsByParentId selection is "

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Category;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_icon_url"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "online_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 427
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 428
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 430
    .local v9, url:Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #url:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 437
    .local v7, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 439
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 440
    const/4 v8, 0x0

    .line 442
    :cond_2
    return-object v8

    .line 434
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getCategoryOnlineIdsByParentId(J)Ljava/util/ArrayList;
    .locals 9
    .parameter "categoryId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 399
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parent_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getCategoryOnlineIdsByParentId selection is "

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Category;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_item_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "online_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 405
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 406
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 412
    .local v7, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 414
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 415
    const/4 v8, 0x0

    .line 417
    :cond_1
    return-object v8

    .line 409
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getCategoryOnlineIdsWithoutParentId()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 446
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "parent_id IS NULL OR parent_id = 0"

    .line 448
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getCategoryOnlineIdsWithoutParentId selection is "

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Category;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_item_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 452
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 453
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 459
    .local v7, e:Ljava/lang/Exception;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 461
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 462
    const/4 v8, 0x0

    .line 464
    :cond_1
    return-object v8

    .line 456
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getCategoryTTLItem(JI)Lcom/htc/store/module/vo/CategoryTTLItem;
    .locals 3
    .parameter "categoryId"
    .parameter "apiType"

    .prologue
    .line 1275
    const/4 v1, 0x0

    .line 1276
    .local v1, item:Lcom/htc/store/module/vo/CategoryTTLItem;
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/store/provider/AccessHelper;->findCategoryTTLItem(JI)Landroid/database/Cursor;

    move-result-object v0

    .line 1277
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1278
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1279
    invoke-static {v0}, Lcom/htc/store/module/vo/CategoryTTLItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/CategoryTTLItem;

    move-result-object v1

    .line 1281
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1283
    :cond_1
    return-object v1
.end method

.method public getComment(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/htc/store/module/vo/CommentItem;
    .locals 10
    .parameter "onlineId"
    .parameter "friendId"
    .parameter "isLike"
    .parameter "isComment"

    .prologue
    const/4 v9, 0x1

    .line 661
    const/4 v7, 0x0

    .line 662
    .local v7, result:Lcom/htc/store/module/vo/CommentItem;
    if-nez p3, :cond_0

    if-eqz p4, :cond_3

    .line 663
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .local v8, sb:Ljava/lang/StringBuilder;
    const-string v0, "online_item_id"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    const-string v0, "online_friend_id"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    if-eqz p3, :cond_4

    .line 667
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "online_friend_like"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 672
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Comment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Comment;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object p2, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 674
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 675
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    invoke-static {v6}, Lcom/htc/store/module/vo/CommentItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/CommentItem;

    move-result-object v7

    .line 678
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 681
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :cond_3
    return-object v7

    .line 668
    .restart local v8       #sb:Ljava/lang/StringBuilder;
    :cond_4
    if-eqz p4, :cond_1

    .line 669
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "online_friend_comment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != \'\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    const-string v0, "online_friend_comment"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getCommentItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CommentItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/store/provider/AccessHelper;->getCommentItems(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCommentItemsByFriend(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "friendId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CommentItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CommentItem;>;"
    invoke-virtual {p0, p1}, Lcom/htc/store/provider/AccessHelper;->findCommentItemsByFriend(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 566
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 567
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    invoke-static {v0}, Lcom/htc/store/module/vo/CommentItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/CommentItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 570
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 572
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 573
    const/4 v1, 0x0

    .line 575
    :cond_2
    return-object v1
.end method

.method public getCommentItemsByItem(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "onlineItemId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CommentItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CommentItem;>;"
    invoke-virtual {p0, p1}, Lcom/htc/store/provider/AccessHelper;->findCommentItemsByItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 634
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 635
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 636
    invoke-static {v0}, Lcom/htc/store/module/vo/CommentItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/CommentItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 638
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 640
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 641
    const/4 v1, 0x0

    .line 643
    :cond_2
    return-object v1
.end method

.method public getCommentItemsByV1Item(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "onlineV1ItemId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CommentItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CommentItem;>;"
    invoke-virtual {p0, p1}, Lcom/htc/store/provider/AccessHelper;->findCommentItemsByV1Item(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 600
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 601
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 602
    invoke-static {v0}, Lcom/htc/store/module/vo/CommentItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/CommentItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 604
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 606
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 607
    const/4 v1, 0x0

    .line 609
    :cond_2
    return-object v1
.end method

.method public getExpiredImageCacheIds()Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1872
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1873
    .local v16, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1874
    .local v20, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/provider/AccessHelper;->getAllCategoryIconURLs()Ljava/util/ArrayList;

    move-result-object v9

    .line 1875
    .local v9, categoryURLs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/provider/AccessHelper;->getAllItemIconURLs()Ljava/util/ArrayList;

    move-result-object v17

    .line 1876
    .local v17, itemURLs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/provider/AccessHelper;->getMyActivityIconURLs()Ljava/util/ArrayList;

    move-result-object v8

    .line 1877
    .local v8, activityURLs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_0

    .line 1878
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1880
    :cond_0
    if-eqz v17, :cond_1

    .line 1881
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1882
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1891
    :cond_1
    if-eqz v8, :cond_2

    .line 1892
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1893
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1902
    :cond_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1903
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1904
    .local v10, count:I
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "getExpiredImageCacheIds count: "

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1905
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v2, "url"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1906
    .local v18, sb:Ljava/lang/StringBuilder;
    const-string v2, " NOT IN ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1907
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    add-int/lit8 v2, v10, -0x1

    if-ge v12, v2, :cond_7

    .line 1908
    const-string v2, "?, "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1907
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1884
    .end local v10           #count:I
    .end local v12           #i:I
    .end local v18           #sb:Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1885
    .local v19, url:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1886
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1895
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v19           #url:Ljava/lang/String;
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1896
    .restart local v19       #url:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1897
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1910
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v19           #url:Ljava/lang/String;
    .restart local v10       #count:I
    .restart local v12       #i:I
    .restart local v18       #sb:Ljava/lang/StringBuilder;
    :cond_7
    const-string v2, "?)"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1911
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1913
    .local v5, selection:Ljava/lang/String;
    sget-object v2, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "getExpiredImageCacheIds selection: "

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/store/provider/table/ImageCacheMapping;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/store/provider/table/ImageCacheMapping;->PROJECTION:[Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1915
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_9

    .line 1916
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1917
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1918
    .local v14, id:J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1920
    .end local v14           #id:J
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1923
    .end local v5           #selection:Ljava/lang/String;
    .end local v10           #count:I
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #i:I
    .end local v18           #sb:Ljava/lang/StringBuilder;
    :cond_9
    return-object v16
.end method

.method public getFeaturedItemsByCategoryId(J)Ljava/util/ArrayList;
    .locals 8
    .parameter "categoryId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/FeaturedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/FeaturedItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/store/provider/AccessHelper;->generateFeaturedItemsSelection(J)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "getFeaturedItems selection is "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Featured;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Featured;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 204
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 205
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {v6}, Lcom/htc/store/module/vo/FeaturedItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/FeaturedItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 211
    const/4 v7, 0x0

    .line 213
    :cond_2
    return-object v7
.end method

.method public getFeaturedOnlineIdsByCategoryId(J)Ljava/util/ArrayList;
    .locals 9
    .parameter "categoryId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 217
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/store/provider/AccessHelper;->generateFeaturedItemsSelection(J)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getFeaturedOnlineIdsByParentId selection is "

    aput-object v2, v1, v8

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Featured;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "online_item_id"

    aput-object v4, v2, v8

    const/4 v4, 0x0

    const-string v5, "online_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 221
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 222
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 228
    const/4 v7, 0x0

    .line 230
    :cond_2
    return-object v7
.end method

.method public getGetMoreMappingItem(Ljava/lang/String;)Lcom/htc/store/module/vo/GetMoreMappingItem;
    .locals 8
    .parameter "key"

    .prologue
    .line 1801
    const/4 v7, 0x0

    .line 1802
    .local v7, item:Lcom/htc/store/module/vo/GetMoreMappingItem;
    const-string v3, "key = ?"

    .line 1803
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/GetMoreMapping;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/GetMoreMapping;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1804
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1805
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1806
    invoke-static {v6}, Lcom/htc/store/module/vo/GetMoreMappingItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/GetMoreMappingItem;

    move-result-object v7

    .line 1808
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1810
    :cond_1
    return-object v7
.end method

.method public getGetMoreTTLItem(Ljava/lang/String;)Lcom/htc/store/module/vo/GetMoreTTLItem;
    .locals 3
    .parameter "key"

    .prologue
    .line 1299
    const/4 v1, 0x0

    .line 1300
    .local v1, item:Lcom/htc/store/module/vo/GetMoreTTLItem;
    invoke-direct {p0, p1}, Lcom/htc/store/provider/AccessHelper;->findGetMoreTTLItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1301
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1302
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1303
    invoke-static {v0}, Lcom/htc/store/module/vo/GetMoreTTLItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/GetMoreTTLItem;

    move-result-object v1

    .line 1305
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1307
    :cond_1
    return-object v1
.end method

.method public getImageCacheMapping(I)Ljava/util/HashMap;
    .locals 10
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1850
    const/4 v8, 0x0

    .line 1851
    .local v8, mapping:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1852
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/ImageCacheMapping;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/ImageCacheMapping;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1853
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1854
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1855
    new-instance v8, Ljava/util/HashMap;

    .end local v8           #mapping:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1856
    .restart local v8       #mapping:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {v6}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ImageCacheMappingItem;

    move-result-object v7

    .line 1857
    .local v7, item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    invoke-virtual {v7}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1858
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1859
    invoke-static {v6}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ImageCacheMappingItem;

    move-result-object v7

    .line 1860
    invoke-virtual {v7}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getURL()Ljava/lang/String;

    move-result-object v9

    .line 1861
    .local v9, url:Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1862
    invoke-virtual {v7}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1866
    .end local v7           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .end local v9           #url:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1868
    :cond_2
    return-object v8
.end method

.method public getImageCacheMappingItem(ILjava/lang/String;)Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .locals 8
    .parameter "type"
    .parameter "url"

    .prologue
    .line 1814
    const/4 v7, 0x0

    .line 1815
    .local v7, item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1816
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/ImageCacheMapping;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/ImageCacheMapping;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1817
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1818
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1819
    invoke-static {v6}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ImageCacheMappingItem;

    move-result-object v7

    .line 1821
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1823
    :cond_1
    return-object v7
.end method

.method public getImageCacheMappingItems(I)Ljava/util/HashMap;
    .locals 10
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/store/module/vo/ImageCacheMappingItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1827
    const/4 v8, 0x0

    .line 1828
    .local v8, mapping:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/store/module/vo/ImageCacheMappingItem;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1829
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/ImageCacheMapping;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/ImageCacheMapping;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1830
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1831
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1832
    new-instance v8, Ljava/util/HashMap;

    .end local v8           #mapping:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/store/module/vo/ImageCacheMappingItem;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1833
    .restart local v8       #mapping:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/store/module/vo/ImageCacheMappingItem;>;"
    invoke-static {v6}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ImageCacheMappingItem;

    move-result-object v7

    .line 1834
    .local v7, item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    invoke-virtual {v7}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1835
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1836
    invoke-static {v6}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ImageCacheMappingItem;

    move-result-object v7

    .line 1837
    invoke-virtual {v7}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getURL()Ljava/lang/String;

    move-result-object v9

    .line 1838
    .local v9, url:Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1839
    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1843
    .end local v7           #item:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .end local v9           #url:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1845
    :cond_2
    return-object v8
.end method

.method public getIrremovableAudioItemOnlineIds()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1445
    const/4 v2, 0x0

    .line 1446
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1448
    .local v3, soundSetOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemTypeString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-direct {p0, v6, v7}, Lcom/htc/store/provider/AccessHelper;->findMyActivityItemByItemContentTypeAndInstallStatus(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v5

    .line 1451
    .local v5, soundsetOnlineIdsCursor:Landroid/database/Cursor;
    if-eqz v5, :cond_1

    .line 1452
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #soundSetOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1453
    .restart local v3       #soundSetOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1454
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1456
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1459
    :cond_1
    const/4 v1, 0x0

    .line 1460
    .local v1, irremovableOnlineIdsCursor:Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1461
    .restart local v2       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1462
    .local v4, soundsetOnlineId:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/htc/store/provider/AccessHelper;->findSoundsetSubItemOnlineIds(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1463
    if-eqz v1, :cond_2

    .line 1464
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1465
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1467
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1471
    .end local v4           #soundsetOnlineId:Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method public getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;
    .locals 3
    .parameter "onlineId"

    .prologue
    .line 1005
    const/4 v1, 0x0

    .line 1006
    .local v1, result:Lcom/htc/store/module/vo/ItemItem;
    invoke-direct {p0, p1}, Lcom/htc/store/provider/AccessHelper;->findItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1007
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1008
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1009
    invoke-static {v0}, Lcom/htc/store/module/vo/ItemItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    .line 1011
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1013
    :cond_1
    return-object v1
.end method

.method public getItemByPackageName(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1029
    const/4 v1, 0x0

    .line 1030
    .local v1, result:Lcom/htc/store/module/vo/ItemItem;
    invoke-direct {p0, p1}, Lcom/htc/store/provider/AccessHelper;->findItemByPackageName(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1031
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1032
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1033
    invoke-static {v0}, Lcom/htc/store/module/vo/ItemItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    .line 1035
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1037
    :cond_1
    return-object v1
.end method

.method public getItemDetailCarouselItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CarouselItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/store/provider/AccessHelper;->getCarouselItemsByGroupId(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItemItemByCategoryIdAndOnlineId(JLjava/lang/String;)Lcom/htc/store/module/vo/ItemItem;
    .locals 8
    .parameter "categoryId"
    .parameter "onlineId"

    .prologue
    .line 905
    const/4 v7, 0x0

    .line 906
    .local v7, item:Lcom/htc/store/module/vo/ItemItem;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "online_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 907
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Item;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 908
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 909
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    invoke-static {v6}, Lcom/htc/store/module/vo/ItemItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v7

    .line 912
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 914
    :cond_1
    return-object v7
.end method

.method public getItemItems()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 842
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    invoke-virtual {p0}, Lcom/htc/store/provider/AccessHelper;->findItemItems()Landroid/database/Cursor;

    move-result-object v0

    .line 844
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 845
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 846
    invoke-static {v0}, Lcom/htc/store/module/vo/ItemItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 848
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 850
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 851
    const/4 v1, 0x0

    .line 853
    :cond_2
    return-object v1
.end method

.method public getItemItemsByCategory(J)Ljava/util/ArrayList;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 875
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 876
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/store/provider/AccessHelper;->findItemItemsByCategory(J)Landroid/database/Cursor;

    move-result-object v0

    .line 877
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 878
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 879
    invoke-static {v0}, Lcom/htc/store/module/vo/ItemItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 881
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 883
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 884
    const/4 v1, 0x0

    .line 886
    :cond_2
    return-object v1
.end method

.method public getItemTTLItem(Ljava/lang/String;I)Lcom/htc/store/module/vo/ItemTTLItem;
    .locals 3
    .parameter "onlineItemId"
    .parameter "apiType"

    .prologue
    .line 1287
    const/4 v1, 0x0

    .line 1288
    .local v1, item:Lcom/htc/store/module/vo/ItemTTLItem;
    invoke-direct {p0, p1, p2}, Lcom/htc/store/provider/AccessHelper;->findItemTTLItem(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 1289
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1290
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1291
    invoke-static {v0}, Lcom/htc/store/module/vo/ItemTTLItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ItemTTLItem;

    move-result-object v1

    .line 1293
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1295
    :cond_1
    return-object v1
.end method

.method public getLandingCarouselItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CarouselItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/store/provider/AccessHelper;->getCarouselItemsByGroupId(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMyActivityIconURLs()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1581
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1582
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/MyActivity;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1583
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1584
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1585
    const/4 v0, 0x7

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1586
    .local v8, url:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1587
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1590
    .end local v8           #url:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1592
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1593
    const/4 v7, 0x0

    .line 1595
    :cond_3
    return-object v7
.end method

.method public getMyActivityInstalledItemsPackageNameOrId()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1705
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1706
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "status = 4"

    .line 1707
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "online_item_id"

    aput-object v5, v2, v9

    const-string v5, "item_package_name"

    aput-object v5, v2, v10

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1709
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1710
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1712
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1713
    .local v8, s:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1714
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1717
    :cond_0
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1720
    .end local v8           #s:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1722
    :cond_2
    return-object v7
.end method

.method public getMyActivityItemByItemContentTypeAndInstallStatus(II)Ljava/util/ArrayList;
    .locals 3
    .parameter "contentType"
    .parameter "installStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1599
    const/4 v1, 0x0

    .line 1601
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/htc/store/provider/AccessHelper;->findMyActivityItemByItemContentTypeAndInstallStatus(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 1604
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1605
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1606
    .restart local v1       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1607
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1609
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1612
    :cond_1
    return-object v1
.end method

.method public getMyActivityItemByOnlineItemId(Ljava/lang/String;)Lcom/htc/store/module/vo/MyActivityItem;
    .locals 9
    .parameter "onlineItemId"

    .prologue
    .line 1616
    const/4 v8, 0x0

    .line 1617
    .local v8, item:Lcom/htc/store/module/vo/MyActivityItem;
    const/4 v6, 0x0

    .line 1619
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1620
    const-string v3, "online_item_id = ?"

    .line 1621
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/MyActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1622
    if-eqz v6, :cond_1

    .line 1623
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1624
    const/16 v0, 0xb

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 1625
    invoke-static {v6}, Lcom/htc/store/module/vo/MyActivityItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/MyActivityItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1634
    .end local v3           #selection:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 1635
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1638
    :cond_2
    :goto_0
    return-object v8

    .line 1631
    :catch_0
    move-exception v7

    .line 1632
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1634
    if-eqz v6, :cond_2

    .line 1635
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1634
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1635
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getMyActivityItemByOnlineItemId(Ljava/lang/String;I)Lcom/htc/store/module/vo/MyActivityItem;
    .locals 9
    .parameter "onlineItemId"
    .parameter "status"

    .prologue
    .line 1642
    const/4 v8, 0x0

    .line 1643
    .local v8, item:Lcom/htc/store/module/vo/MyActivityItem;
    const/4 v6, 0x0

    .line 1645
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online_item_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1648
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/MyActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1649
    if-eqz v6, :cond_0

    .line 1650
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1651
    invoke-static {v6}, Lcom/htc/store/module/vo/MyActivityItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/MyActivityItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 1658
    .end local v3           #selection:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 1659
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1662
    :cond_1
    :goto_1
    return-object v8

    .line 1655
    :catch_0
    move-exception v7

    .line 1656
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1658
    if-eqz v6, :cond_1

    .line 1659
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1658
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1659
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getMyActivityItemByOnlineV1Id(Ljava/lang/String;)Lcom/htc/store/module/vo/MyActivityItem;
    .locals 8
    .parameter "onlineV1Id"

    .prologue
    .line 1666
    const/4 v7, 0x0

    .line 1667
    .local v7, item:Lcom/htc/store/module/vo/MyActivityItem;
    const-string v3, "online_v1_id = ?"

    .line 1668
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/MyActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1669
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1670
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1671
    invoke-static {v6}, Lcom/htc/store/module/vo/MyActivityItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v7

    .line 1673
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1675
    :cond_1
    return-object v7
.end method

.method public getMyActivityItemByPackageName(Ljava/lang/String;)Lcom/htc/store/module/vo/MyActivityItem;
    .locals 9
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 1679
    const/4 v7, 0x0

    .line 1680
    .local v7, item:Lcom/htc/store/module/vo/MyActivityItem;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item_package_name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1682
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "getMyActivityItemByPackageName selection is "

    aput-object v5, v1, v2

    aput-object v3, v1, v8

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1684
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/MyActivity;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1685
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1686
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v8, :cond_3

    .line 1687
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1689
    const/16 v0, 0xb

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1690
    invoke-static {v6}, Lcom/htc/store/module/vo/MyActivityItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v7

    .line 1699
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1701
    :cond_2
    return-object v7

    .line 1695
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1696
    invoke-static {v6}, Lcom/htc/store/module/vo/MyActivityItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v7

    goto :goto_0
.end method

.method public getMyActivityItemMarkedIds(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1552
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1553
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1554
    .local v8, sb:Ljava/lang/StringBuilder;
    const-string v0, "online_item_id"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1556
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v1, v10, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMyActivityItemMarkedIds() selection = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1557
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v5, "online_marked_id"

    aput-object v5, v2, v9

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1558
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1559
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1560
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1562
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1564
    :cond_1
    return-object v7
.end method

.method public getMyActivityItems()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/MyActivityItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1487
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1488
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/MyActivity;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1489
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1490
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1491
    invoke-static {v6}, Lcom/htc/store/module/vo/MyActivityItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1493
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1495
    :cond_1
    return-object v7
.end method

.method public getMyActivityItemsByPurchased()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/MyActivityItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1527
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1528
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    const-string v3, "online_is_purchased = 1"

    .line 1529
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/MyActivity;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1530
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1531
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1532
    invoke-static {v6}, Lcom/htc/store/module/vo/MyActivityItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1534
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1536
    :cond_1
    return-object v7
.end method

.method public getMyActivityItemsByStatus(I)Ljava/util/ArrayList;
    .locals 8
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/MyActivityItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1499
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1500
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1501
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/MyActivity;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1502
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1503
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1504
    invoke-static {v6}, Lcom/htc/store/module/vo/MyActivityItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1506
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1508
    :cond_1
    return-object v7
.end method

.method public getMyActivityItemsIds()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1540
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1541
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "online_item_id"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1542
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1543
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1544
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1546
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1548
    :cond_1
    return-object v7
.end method

.method public getMyActivityItemsIdsByPurchased()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1726
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1727
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "online_is_purchased = 1"

    .line 1728
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "online_item_id"

    aput-object v5, v2, v8

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1729
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1730
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1733
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1735
    :cond_1
    return-object v7
.end method

.method public getMyActivityItemsIdsByPurchased(JJ)Ljava/util/ArrayList;
    .locals 10
    .parameter "oldestTime"
    .parameter "latestTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1755
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1756
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online_is_purchased = 1 AND timestamp >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1759
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v1, v9, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMyActivityItemsIdsByPurchased selection = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1760
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v5, "online_item_id"

    aput-object v5, v2, v8

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1761
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1762
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1765
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1767
    :cond_1
    return-object v7
.end method

.method public getMyActivityItemsIdsByPurchasedOutOfTheTime(JJ)Ljava/util/ArrayList;
    .locals 10
    .parameter "oldestTime"
    .parameter "latestTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1739
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1740
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online_is_purchased = 1 AND (timestamp < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1743
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v1, v9, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMyActivityItemsIdsByPurchasedOutOfTheTime selection = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1744
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v5, "online_item_id"

    aput-object v5, v2, v8

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1745
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1746
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1747
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1749
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1751
    :cond_1
    return-object v7
.end method

.method public getMyActivityItemsIdsByStatus(I)Ljava/util/ArrayList;
    .locals 9
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1568
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1569
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1570
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "online_item_id"

    aput-object v5, v2, v8

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1571
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1572
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1575
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1577
    :cond_1
    return-object v7
.end method

.method public getPromoItemsByCategoryId(J)Ljava/util/ArrayList;
    .locals 8
    .parameter "categoryId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/PromoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/PromoItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/store/provider/AccessHelper;->generatePromoItemsSelection(J)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "getPromoItems selection is "

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Promo;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Promo;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 133
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 134
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {v6}, Lcom/htc/store/module/vo/PromoItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/PromoItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 140
    const/4 v7, 0x0

    .line 142
    :cond_2
    return-object v7
.end method

.method public getPromoOnlineIdsByCategoryId(J)Ljava/util/ArrayList;
    .locals 9
    .parameter "categoryId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 150
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/store/provider/AccessHelper;->generatePromoItemsSelection(J)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getPromoOnlineIdsByParentId selection is "

    aput-object v2, v1, v8

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Promo;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "online_item_id"

    aput-object v4, v2, v8

    const/4 v4, 0x0

    const-string v5, "online_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 154
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 155
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 161
    const/4 v7, 0x0

    .line 163
    :cond_2
    return-object v7
.end method

.method public getSimilarItemsByOnlineId(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "onlineId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 825
    const/4 v1, 0x0

    .line 826
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    invoke-virtual {p0, p1}, Lcom/htc/store/provider/AccessHelper;->findSimilarItemsByOnlineId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 827
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 828
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .restart local v1       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 830
    invoke-static {v0}, Lcom/htc/store/module/vo/ItemItem;->fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 832
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 834
    :cond_1
    return-object v1
.end method

.method public getSoundsetItemByOnlineId(Lcom/htc/store/module/vo/ItemItem;)Lcom/htc/store/module/vo/SoundsetItem;
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 1107
    const/4 v4, 0x0

    .line 1108
    .local v4, result:Lcom/htc/store/module/vo/SoundsetItem;
    if-eqz p1, :cond_9

    .line 1109
    new-instance v4, Lcom/htc/store/module/vo/SoundsetItem;

    .end local v4           #result:Lcom/htc/store/module/vo/SoundsetItem;
    invoke-direct {v4, p1}, Lcom/htc/store/module/vo/SoundsetItem;-><init>(Lcom/htc/store/module/vo/ItemItem;)V

    .line 1110
    .restart local v4       #result:Lcom/htc/store/module/vo/SoundsetItem;
    if-eqz v4, :cond_9

    .line 1111
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/store/provider/AccessHelper;->findSoundsetItemRolsByOnlineId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1112
    .local v2, cursor:Landroid/database/Cursor;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1113
    .local v3, onlineIdRoleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v2, :cond_8

    .line 1114
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1116
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1122
    :cond_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1123
    .local v1, audioItemOnlineId:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1124
    invoke-virtual {p0, v1}, Lcom/htc/store/provider/AccessHelper;->getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 1125
    .local v0, audioItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {v4, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setRingtoneItem(Lcom/htc/store/module/vo/ItemItem;)V

    .line 1126
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    .end local v0           #audioItem:Lcom/htc/store/module/vo/ItemItem;
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #audioItemOnlineId:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1130
    .restart local v1       #audioItemOnlineId:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1131
    invoke-virtual {p0, v1}, Lcom/htc/store/provider/AccessHelper;->getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 1132
    .restart local v0       #audioItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {v4, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setAlarmItem(Lcom/htc/store/module/vo/ItemItem;)V

    .line 1133
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    .end local v0           #audioItem:Lcom/htc/store/module/vo/ItemItem;
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #audioItemOnlineId:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1137
    .restart local v1       #audioItemOnlineId:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 1138
    invoke-virtual {p0, v1}, Lcom/htc/store/provider/AccessHelper;->getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 1139
    .restart local v0       #audioItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {v4, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setNotificationItem(Lcom/htc/store/module/vo/ItemItem;)V

    .line 1140
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    .end local v0           #audioItem:Lcom/htc/store/module/vo/ItemItem;
    :cond_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #audioItemOnlineId:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1144
    .restart local v1       #audioItemOnlineId:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 1145
    invoke-virtual {p0, v1}, Lcom/htc/store/provider/AccessHelper;->getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 1146
    .restart local v0       #audioItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {v4, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setMessageItem(Lcom/htc/store/module/vo/ItemItem;)V

    .line 1147
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    .end local v0           #audioItem:Lcom/htc/store/module/vo/ItemItem;
    :cond_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #audioItemOnlineId:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1151
    .restart local v1       #audioItemOnlineId:Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 1152
    invoke-virtual {p0, v1}, Lcom/htc/store/provider/AccessHelper;->getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 1153
    .restart local v0       #audioItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {v4, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setEmailItem(Lcom/htc/store/module/vo/ItemItem;)V

    .line 1154
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    .end local v0           #audioItem:Lcom/htc/store/module/vo/ItemItem;
    :cond_5
    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #audioItemOnlineId:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1158
    .restart local v1       #audioItemOnlineId:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 1159
    invoke-virtual {p0, v1}, Lcom/htc/store/provider/AccessHelper;->getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 1160
    .restart local v0       #audioItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {v4, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setCalendarItem(Lcom/htc/store/module/vo/ItemItem;)V

    .line 1161
    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    .end local v0           #audioItem:Lcom/htc/store/module/vo/ItemItem;
    :cond_6
    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #audioItemOnlineId:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1165
    .restart local v1       #audioItemOnlineId:Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 1166
    invoke-virtual {p0, v1}, Lcom/htc/store/provider/AccessHelper;->getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    .line 1167
    .restart local v0       #audioItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {v4, v0}, Lcom/htc/store/module/vo/SoundsetItem;->setTaskItem(Lcom/htc/store/module/vo/ItemItem;)V

    .line 1168
    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    .end local v0           #audioItem:Lcom/htc/store/module/vo/ItemItem;
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1174
    .end local v1           #audioItemOnlineId:Ljava/lang/String;
    :cond_8
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 1176
    const/4 v4, 0x0

    .line 1181
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #onlineIdRoleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_9
    return-object v4
.end method

.method public getSoundsetItemByOnlineId(Ljava/lang/String;)Lcom/htc/store/module/vo/SoundsetItem;
    .locals 1
    .parameter "onlineId"

    .prologue
    .line 1190
    invoke-virtual {p0, p1}, Lcom/htc/store/provider/AccessHelper;->getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/store/provider/AccessHelper;->getSoundsetItemByOnlineId(Lcom/htc/store/module/vo/ItemItem;)Lcom/htc/store/module/vo/SoundsetItem;

    move-result-object v0

    return-object v0
.end method

.method public hasCategoryItem(J)Z
    .locals 3
    .parameter "parentId"

    .prologue
    .line 498
    const/4 v1, 0x0

    .line 499
    .local v1, result:Z
    invoke-virtual {p0, p1, p2}, Lcom/htc/store/provider/AccessHelper;->findCategoryItemsByParentId(J)Landroid/database/Cursor;

    move-result-object v0

    .line 500
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 501
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    const/4 v1, 0x1

    .line 504
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 506
    :cond_1
    return v1
.end method

.method public hasFeaturedItem(J)Z
    .locals 8
    .parameter "categoryId"

    .prologue
    .line 168
    const/4 v7, 0x0

    .line 169
    .local v7, result:Z
    invoke-direct {p0, p1, p2}, Lcom/htc/store/provider/AccessHelper;->generateFeaturedItemsSelection(J)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Featured;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Featured;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 171
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 172
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v7, 0x1

    .line 175
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_1
    return v7
.end method

.method public hasItemItem(Ljava/lang/String;)Z
    .locals 3
    .parameter "onlineId"

    .prologue
    .line 1017
    const/4 v1, 0x0

    .line 1018
    .local v1, result:Z
    invoke-direct {p0, p1}, Lcom/htc/store/provider/AccessHelper;->findItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1019
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1020
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1021
    const/4 v1, 0x1

    .line 1023
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1025
    :cond_1
    return v1
.end method

.method public hasMyActivityItem(I)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 1475
    const/4 v1, 0x0

    .line 1476
    .local v1, result:Z
    invoke-virtual {p0, p1}, Lcom/htc/store/provider/AccessHelper;->findMyActivityItems(I)Landroid/database/Cursor;

    move-result-object v0

    .line 1477
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1478
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1479
    const/4 v1, 0x1

    .line 1481
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1483
    :cond_1
    return v1
.end method

.method public hasPromoItem(J)Z
    .locals 8
    .parameter "categoryId"

    .prologue
    .line 97
    const/4 v7, 0x0

    .line 98
    .local v7, result:Z
    invoke-direct {p0, p1, p2}, Lcom/htc/store/provider/AccessHelper;->generatePromoItemsSelection(J)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/Promo;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/store/provider/table/Promo;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "online_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 100
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 101
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v7, 0x1

    .line 104
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_1
    return v7
.end method

.method public isCategoryDataExpired(JI)Z
    .locals 6
    .parameter "categoryId"
    .parameter "apiType"

    .prologue
    .line 1311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/store/provider/AccessHelper;->isCategoryDataExpired(JIJ)Z

    move-result v0

    return v0
.end method

.method public isCategoryDataExpired(JIJ)Z
    .locals 10
    .parameter "categoryId"
    .parameter "apiType"
    .parameter "current"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1315
    const/4 v0, 0x0

    .line 1316
    .local v0, result:Z
    const-string v6, "isCategoryDataExpired: "

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, ", "

    aput-object v8, v7, v4

    const/4 v8, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1317
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/store/provider/AccessHelper;->getCategoryTTLItem(JI)Lcom/htc/store/module/vo/CategoryTTLItem;

    move-result-object v3

    .line 1318
    .local v3, ttlItem:Lcom/htc/store/module/vo/CategoryTTLItem;
    if-eqz v3, :cond_1

    .line 1319
    invoke-virtual {v3}, Lcom/htc/store/module/vo/CategoryTTLItem;->getOnlineTTL()J

    move-result-wide v1

    .line 1320
    .local v1, ttl:J
    const-string v6, "isCategoryDataExpired: "

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1321
    cmp-long v6, v1, p4

    if-gtz v6, :cond_0

    move v0, v4

    .line 1325
    .end local v1           #ttl:J
    :goto_0
    const-string v6, "isCategoryDataExpired: "

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v6, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1326
    return v0

    .restart local v1       #ttl:J
    :cond_0
    move v0, v5

    .line 1321
    goto :goto_0

    .line 1323
    .end local v1           #ttl:J
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isGetMoreDataExpired(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 1349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/store/provider/AccessHelper;->isGetMoreDataExpired(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public isGetMoreDataExpired(Ljava/lang/String;J)Z
    .locals 4
    .parameter "key"
    .parameter "current"

    .prologue
    .line 1353
    const/4 v0, 0x0

    .line 1354
    .local v0, result:Z
    invoke-virtual {p0, p1}, Lcom/htc/store/provider/AccessHelper;->getGetMoreTTLItem(Ljava/lang/String;)Lcom/htc/store/module/vo/GetMoreTTLItem;

    move-result-object v1

    .line 1355
    .local v1, ttlItem:Lcom/htc/store/module/vo/GetMoreTTLItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/store/module/vo/GetMoreTTLItem;->getOnlineTTL()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-gtz v2, :cond_1

    .line 1356
    :cond_0
    const/4 v0, 0x1

    .line 1358
    :cond_1
    return v0
.end method

.method public isInMyActivity(Ljava/lang/String;)Z
    .locals 9
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x0

    .line 1771
    const/4 v7, 0x0

    .line 1772
    .local v7, result:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item_package_name =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1773
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "status"

    aput-object v8, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1774
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1775
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1776
    const/4 v7, 0x1

    .line 1779
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1781
    :cond_1
    return v7
.end method

.method public isItemDataExpired(Ljava/lang/String;I)Z
    .locals 2
    .parameter "onlineItemId"
    .parameter "apiType"

    .prologue
    .line 1330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/htc/store/provider/AccessHelper;->isItemDataExpired(Ljava/lang/String;IJ)Z

    move-result v0

    return v0
.end method

.method public isItemDataExpired(Ljava/lang/String;IJ)Z
    .locals 10
    .parameter "onlineItemId"
    .parameter "apiType"
    .parameter "current"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1334
    const/4 v0, 0x0

    .line 1335
    .local v0, result:Z
    const-string v6, "isItemDataExpired: "

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    const-string v8, ", "

    aput-object v8, v7, v4

    const/4 v8, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1336
    invoke-virtual {p0, p1, p2}, Lcom/htc/store/provider/AccessHelper;->getItemTTLItem(Ljava/lang/String;I)Lcom/htc/store/module/vo/ItemTTLItem;

    move-result-object v3

    .line 1337
    .local v3, ttlItem:Lcom/htc/store/module/vo/ItemTTLItem;
    if-eqz v3, :cond_1

    .line 1338
    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemTTLItem;->getOnlineTTL()J

    move-result-wide v1

    .line 1339
    .local v1, ttl:J
    const-string v6, "isItemDataExpired: "

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1340
    cmp-long v6, v1, p3

    if-gtz v6, :cond_0

    move v0, v4

    .line 1344
    .end local v1           #ttl:J
    :goto_0
    const-string v6, "isItemDataExpired: "

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v6, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1345
    return v0

    .restart local v1       #ttl:J
    :cond_0
    move v0, v5

    .line 1340
    goto :goto_0

    .line 1342
    .end local v1           #ttl:J
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSimilarItemsClean(Ljava/lang/String;)Z
    .locals 5
    .parameter "onlineId"

    .prologue
    .line 791
    const/4 v4, 0x0

    .line 792
    .local v4, result:Z
    invoke-virtual {p0, p1}, Lcom/htc/store/provider/AccessHelper;->findSimilarItemsByOnlineId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 793
    .local v2, itemsInItemCursor:Landroid/database/Cursor;
    invoke-direct {p0, p1}, Lcom/htc/store/provider/AccessHelper;->findSimilarItemOnlineIdsInStructure(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 794
    .local v3, itemsInSimilarityStructureCursor:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 795
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 796
    .local v0, countInItems:I
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 797
    .local v1, countInSimilarityStructure:I
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    if-ne v0, v1, :cond_0

    .line 798
    const/4 v4, 0x1

    .line 801
    .end local v0           #countInItems:I
    .end local v1           #countInSimilarityStructure:I
    :cond_0
    if-eqz v2, :cond_1

    .line 802
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 804
    :cond_1
    if-eqz v3, :cond_2

    .line 805
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 807
    :cond_2
    return v4
.end method

.method public isUpdate(Lcom/htc/store/module/vo/MyActivityItem;)Ljava/lang/String;
    .locals 9
    .parameter "item"

    .prologue
    .line 1785
    const-string v3, ""

    .line 1786
    .local v3, result:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1787
    invoke-virtual {p1}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemByOnlineItemId(Ljava/lang/String;)Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v1

    .line 1788
    .local v1, itemInDb:Lcom/htc/store/module/vo/MyActivityItem;
    if-eqz v1, :cond_0

    .line 1789
    invoke-virtual {v1}, Lcom/htc/store/module/vo/MyActivityItem;->getItemVersionName()Ljava/lang/String;

    move-result-object v0

    .line 1790
    .local v0, dbVersion:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/store/module/vo/MyActivityItem;->getItemVersionName()Ljava/lang/String;

    move-result-object v2

    .line 1791
    .local v2, onlineVersion:Ljava/lang/String;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "label:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/htc/store/module/vo/MyActivityItem;->getItemLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", dbVersion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", onlineVersion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1792
    invoke-static {v0, v2}, Lcom/htc/store/util/CommonUtils;->isVersion2LargerThanVersion1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1793
    move-object v3, v0

    .line 1797
    .end local v0           #dbVersion:Ljava/lang/String;
    .end local v1           #itemInDb:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v2           #onlineVersion:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public removeCategoriesByParentId(J)I
    .locals 7
    .parameter "parentId"

    .prologue
    .line 2780
    const/4 v0, 0x0

    .line 2781
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parent_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2782
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeCategoriesByParentId selection is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2784
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/Category;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2789
    :goto_0
    return v0

    .line 2785
    :catch_0
    move-exception v1

    .line 2786
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeCategoriesByParentIdAndOnlineId(JLjava/util/ArrayList;)I
    .locals 8
    .parameter "parentId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2793
    .local p3, onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2794
    .local v0, count:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2795
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v4, "parent_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2796
    const-string v4, "online_item_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IN (\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', \'"

    invoke-static {v5, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2797
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2798
    .local v3, selection:Ljava/lang/String;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "removeCategoriesByParentIdAndOnlineId selection is "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2800
    :try_start_0
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/Category;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2804
    :goto_0
    return v0

    .line 2801
    :catch_0
    move-exception v1

    .line 2802
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v5, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeCategoryTTLItem(JI)I
    .locals 8
    .parameter "categoryId"
    .parameter "apiType"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2867
    const/4 v0, 0x0

    .line 2868
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "category_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "rest_api_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2869
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "removeCategoryTTLItem selection is "

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2871
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/CategoryTTL;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2872
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeCategoryTTLItem count:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2876
    :goto_0
    return v0

    .line 2873
    :catch_0
    move-exception v1

    .line 2874
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeCommentByItem(Ljava/lang/String;Z)I
    .locals 7
    .parameter "mOnlineItemId"
    .parameter "isLiked"

    .prologue
    .line 2704
    const/4 v0, 0x0

    .line 2706
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online_item_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2707
    .local v2, selection:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 2709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND online_friend_like = 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2714
    :goto_0
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeCommentByItem selection is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2716
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/Comment;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2721
    :goto_1
    return v0

    .line 2712
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND online_friend_like != 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2717
    :catch_0
    move-exception v1

    .line 2718
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "remove error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public removeCommentByV1Item(Ljava/lang/String;Z)I
    .locals 7
    .parameter "mOnlineV1ItemId"
    .parameter "isLiked"

    .prologue
    .line 2678
    const/4 v0, 0x0

    .line 2680
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online_v1_item_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2681
    .local v2, selection:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 2683
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND online_friend_like = 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2688
    :goto_0
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeCommentByV1Item selection is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2690
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/Comment;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2695
    :goto_1
    return v0

    .line 2686
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND online_friend_like != 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2691
    :catch_0
    move-exception v1

    .line 2692
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "remove error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public removeFeaturedByCategoryId(J)I
    .locals 7
    .parameter "categoryId"

    .prologue
    .line 2647
    const/4 v0, 0x0

    .line 2648
    .local v0, count:I
    invoke-direct {p0, p1, p2}, Lcom/htc/store/provider/AccessHelper;->generateFeaturedItemsSelection(J)Ljava/lang/String;

    move-result-object v2

    .line 2649
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeFeaturedByCategoryId selection is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2651
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/Featured;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2656
    :goto_0
    return v0

    .line 2652
    :catch_0
    move-exception v1

    .line 2653
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeGetMoreMappingItem(Ljava/lang/String;)I
    .locals 7
    .parameter "key"

    .prologue
    .line 3082
    const/4 v0, 0x0

    .line 3083
    .local v0, count:I
    const-string v2, "key = ?"

    .line 3085
    .local v2, where:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/GetMoreMapping;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3089
    :goto_0
    return v0

    .line 3086
    :catch_0
    move-exception v1

    .line 3087
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeImageCacheMappingItem(J)I
    .locals 6
    .parameter "id"

    .prologue
    .line 3106
    const/4 v0, 0x0

    .line 3107
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3109
    .local v2, where:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/ImageCacheMapping;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3113
    :goto_0
    return v0

    .line 3110
    :catch_0
    move-exception v1

    .line 3111
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeImageCacheMappingItem(Ljava/lang/String;)I
    .locals 7
    .parameter "url"

    .prologue
    .line 3117
    const/4 v0, 0x0

    .line 3118
    .local v0, count:I
    const-string v2, "url = ?"

    .line 3120
    .local v2, where:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/ImageCacheMapping;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3124
    :goto_0
    return v0

    .line 3121
    :catch_0
    move-exception v1

    .line 3122
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeItemByCategory(J)I
    .locals 7
    .parameter "categoryId"

    .prologue
    .line 2823
    const/4 v0, 0x0

    .line 2824
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "category_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2825
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeItemByCategory selection is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2827
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2832
    :goto_0
    return v0

    .line 2828
    :catch_0
    move-exception v1

    .line 2829
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "remove error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeItemIdFromSTPInbox(Ljava/lang/String;)I
    .locals 6
    .parameter "itemId"

    .prologue
    .line 3156
    const/4 v0, 0x0

    .line 3157
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online_item_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3159
    .local v2, where:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/STPInbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3163
    :goto_0
    return v0

    .line 3160
    :catch_0
    move-exception v1

    .line 3161
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeItemTTLItem(Ljava/lang/String;I)I
    .locals 8
    .parameter "onlineItemId"
    .parameter "apiType"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2893
    const/4 v0, 0x0

    .line 2894
    .local v0, count:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2895
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online_item_id = ? AND rest_api_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2896
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "removeItemTTLItem selection is "

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2898
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/ItemTTL;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2903
    .end local v2           #selection:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 2899
    .restart local v2       #selection:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2900
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeItemsByCategoryIdAndExpired(J)I
    .locals 9
    .parameter "categoryId"

    .prologue
    const/4 v8, 0x1

    .line 2851
    const/4 v0, 0x0

    .line 2852
    .local v0, count:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2853
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v4, "category_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2854
    const-string v4, "status"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2855
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2856
    .local v3, selection:Ljava/lang/String;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "removeItemsByCategoryIdAndExpired selection is "

    aput-object v7, v5, v6

    aput-object v3, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2858
    :try_start_0
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2862
    :goto_0
    return v0

    .line 2859
    :catch_0
    move-exception v1

    .line 2860
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v5, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeItemsByCategoryIdAndOnlineId(JLjava/util/ArrayList;)I
    .locals 8
    .parameter "categoryId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2836
    .local p3, onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2837
    .local v0, count:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2838
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v4, "category_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2839
    const-string v4, "online_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IN (\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', \'"

    invoke-static {v5, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2840
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2841
    .local v3, selection:Ljava/lang/String;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "removeItemsByCategoryIdAndOnlineId selection is "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2843
    :try_start_0
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2847
    :goto_0
    return v0

    .line 2844
    :catch_0
    move-exception v1

    .line 2845
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v5, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeMyActivityItemById(J)I
    .locals 7
    .parameter "id"

    .prologue
    .line 2981
    const/4 v0, 0x0

    .line 2982
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2983
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeMyActivityItemById selection is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2985
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2989
    :goto_0
    return v0

    .line 2986
    :catch_0
    move-exception v1

    .line 2987
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeMyActivityItemByOnlineIds(Ljava/util/ArrayList;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2993
    const/4 v0, 0x0

    .line 2994
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online_item_id IN ( \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' , \'"

    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2995
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "removeMyActivityItemByOnlineIds selection is "

    aput-object v5, v4, v7

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2997
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3001
    :goto_0
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeMyActivityItemByOnlineIds() remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " record(s)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3002
    return v0

    .line 2998
    :catch_0
    move-exception v1

    .line 2999
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeMyActivityItemByPackageName(Ljava/lang/String;)I
    .locals 7
    .parameter "pkgName"

    .prologue
    .line 2969
    const/4 v0, 0x0

    .line 2970
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item_package_name = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2971
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeMyActivityItemByPackageName selection is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2973
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2977
    :goto_0
    return v0

    .line 2974
    :catch_0
    move-exception v1

    .line 2975
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeMyActivityMarkedItemByOnlilneId(Ljava/lang/String;)I
    .locals 7
    .parameter "id"

    .prologue
    .line 2943
    const/4 v0, 0x0

    .line 2944
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online_item_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2946
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeMyActivityMarkedItemByOnlilneId selection is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2948
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2952
    :goto_0
    return v0

    .line 2949
    :catch_0
    move-exception v1

    .line 2950
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeMyActivityMarkedItemByOnlilneIds(Ljava/util/ArrayList;)I
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2956
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2957
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online_item_id IN ( \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' , \'"

    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\') AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2959
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeMyActivityMarkedItemByOnlilneIds selection is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2961
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2965
    :goto_0
    return v0

    .line 2962
    :catch_0
    move-exception v1

    .line 2963
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeMyActivityMarkedItemsByOnlilneMarkedIds(Ljava/util/ArrayList;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3006
    const/4 v0, 0x0

    .line 3007
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online_marked_id IN ( \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' , \'"

    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\') AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3009
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "removeMyActivityMarkedItemsByOnlilneMarkedIds selection is "

    aput-object v5, v4, v7

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3011
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3015
    :goto_0
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeMyActivityMarkedItemsByOnlilneMarkedIds() remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " record(s)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3016
    return v0

    .line 3012
    :catch_0
    move-exception v1

    .line 3013
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removePromoByCategoryId(J)I
    .locals 7
    .parameter "categoryId"

    .prologue
    .line 2621
    const/4 v0, 0x0

    .line 2622
    .local v0, count:I
    invoke-direct {p0, p1, p2}, Lcom/htc/store/provider/AccessHelper;->generatePromoItemsSelection(J)Ljava/lang/String;

    move-result-object v2

    .line 2623
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removePromoByCategoryId selection is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2625
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/Promo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2629
    :goto_0
    return v0

    .line 2626
    :catch_0
    move-exception v1

    .line 2627
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeSimilarityByItemId(Ljava/lang/String;)I
    .locals 7
    .parameter "onlineId"

    .prologue
    .line 3021
    const/4 v0, -0x1

    .line 3022
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online_item_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3023
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeSimilarityByItemId selection is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3025
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/SimilarityStructure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3029
    :goto_0
    return v0

    .line 3026
    :catch_0
    move-exception v1

    .line 3027
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeSimilarityBySimilarItemIds(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 9
    .parameter "onlineId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3033
    .local p2, similarOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3035
    .local v0, count:I
    const/4 v3, 0x0

    .line 3037
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3039
    .local v4, similarOnlindId:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "online_item_id=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "online_similar_item_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3040
    sget-object v5, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "removeSimilarityBySimilarItemIds selection is "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3041
    iget-object v5, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/store/provider/table/SimilarityStructure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    .line 3042
    :catch_0
    move-exception v1

    .line 3043
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v6, "delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 3047
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #similarOnlindId:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public removeSoundsetStructureBySoundsetOnlineId(Ljava/lang/String;)I
    .locals 7
    .parameter "onlineId"

    .prologue
    .line 3052
    const/4 v0, -0x1

    .line 3054
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online_soundset_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3055
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeSoundsetStructureBySoundsetOnlineId selection is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3057
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/SoundsetStructure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3062
    :goto_0
    return v0

    .line 3058
    :catch_0
    move-exception v1

    .line 3059
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "removeSoundsetStructureBySoundsetOnlineId delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeSoundsetStructureRoleBySoundsetOnlineId(Ljava/lang/String;I)I
    .locals 7
    .parameter "onlineId"
    .parameter "role"

    .prologue
    .line 3066
    const/4 v0, -0x1

    .line 3068
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online_soundset_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "online_audio_role"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3069
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeSoundsetStructureRoleBySoundsetOnlineId selection is "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3071
    :try_start_0
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/SoundsetStructure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3076
    :goto_0
    return v0

    .line 3072
    :catch_0
    move-exception v1

    .line 3073
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const-string v4, "removeSoundsetStructureRoleBySoundsetOnlineId delete error "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setAllItemStatusByCategoryId(JI)I
    .locals 6
    .parameter "categoryId"
    .parameter "status"

    .prologue
    .line 3351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "category_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3352
    .local v1, selection:Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3353
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "status"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3354
    iget-object v3, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3355
    .local v0, count:I
    return v0
.end method

.method public declared-synchronized syncCategoryItems(JLjava/util/ArrayList;)Z
    .locals 22
    .parameter "categoryId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CategoryItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3375
    .local p3, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    monitor-enter p0

    const/4 v13, 0x0

    .line 3376
    .local v13, result:Z
    const-wide/16 v18, 0x0

    cmp-long v18, p1, v18

    if-gtz v18, :cond_0

    const-wide/16 v18, -0x1

    cmp-long v18, p1, v18

    if-eqz v18, :cond_0

    const-wide/16 v18, -0x2

    cmp-long v18, p1, v18

    if-nez v18, :cond_15

    :cond_0
    if-eqz p3, :cond_15

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_15

    .line 3377
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3379
    .local v4, count:I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3380
    .local v12, onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v4, :cond_1

    .line 3381
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/store/module/vo/CategoryItem;

    .line 3382
    .local v10, item:Lcom/htc/store/module/vo/CategoryItem;
    invoke-virtual {v10}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3383
    sget-object v18, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "onlineCategoryId: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v10}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineId()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3380
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3386
    .end local v10           #item:Lcom/htc/store/module/vo/CategoryItem;
    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/htc/store/provider/AccessHelper;->getCategoryOnlineIdsByParentId(J)Ljava/util/ArrayList;

    move-result-object v7

    .line 3387
    .local v7, dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/provider/AccessHelper;->getCategoryOnlineIdsWithoutParentId()Ljava/util/ArrayList;

    move-result-object v8

    .line 3388
    .local v8, dbOnlineIdsWithoutParentId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 3389
    :cond_2
    sget-object v18, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "dbOnlineIds is empty."

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3390
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 3391
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/store/provider/AccessHelper;->addCategoryItems(Ljava/util/ArrayList;)I

    move-result v3

    .line 3392
    .local v3, addedCount:I
    sget-object v18, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "addedCount: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3468
    .end local v3           #addedCount:I
    .end local v4           #count:I
    .end local v7           #dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #dbOnlineIdsWithoutParentId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #i:I
    .end local v12           #onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    monitor-exit p0

    return v13

    .line 3394
    .restart local v4       #count:I
    .restart local v7       #dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #dbOnlineIdsWithoutParentId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #i:I
    .restart local v12       #onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3395
    .local v14, toAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 3396
    .local v16, toFillParentId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v4, :cond_6

    .line 3397
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3398
    .local v11, onlineId:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 3399
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3396
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3401
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 3375
    .end local v4           #count:I
    .end local v7           #dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #dbOnlineIdsWithoutParentId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #i:I
    .end local v11           #onlineId:Ljava/lang/String;
    .end local v12           #onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #toAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    .end local v16           #toFillParentId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 3404
    .restart local v4       #count:I
    .restart local v7       #dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #dbOnlineIdsWithoutParentId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #i:I
    .restart local v12       #onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #toAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    .restart local v16       #toFillParentId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    :cond_6
    :try_start_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_7

    .line 3405
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/store/provider/AccessHelper;->addCategoryItems(Ljava/util/ArrayList;)I

    .line 3407
    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_8

    .line 3408
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/store/provider/AccessHelper;->updateCategoryItemsWithoutParentId(Ljava/util/ArrayList;)I

    .line 3410
    :cond_8
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 3411
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 3414
    .end local v14           #toAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    .end local v16           #toFillParentId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    :cond_9
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3415
    .restart local v14       #toAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 3416
    .local v17, toUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 3417
    .restart local v16       #toFillParentId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3419
    .local v15, toDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v4, :cond_e

    .line 3420
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3421
    .restart local v11       #onlineId:Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 3422
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3423
    sget-object v18, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "toUpdate add: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v11, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3419
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 3425
    :cond_a
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 3426
    :cond_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3427
    sget-object v18, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "toAdd add: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v11, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 3429
    :cond_c
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 3430
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3431
    sget-object v18, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "toFillParentId add: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v11, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 3433
    :cond_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3434
    sget-object v18, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "toAdd add: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v11, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 3439
    .end local v11           #onlineId:Ljava/lang/String;
    :cond_e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3440
    .local v5, dbCount:I
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v5, :cond_10

    .line 3441
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3442
    .local v6, dbOnlineId:Ljava/lang/String;
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_f

    .line 3443
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3444
    sget-object v18, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "toDelete add: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v6, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3440
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 3447
    .end local v6           #dbOnlineId:Ljava/lang/String;
    :cond_10
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_11

    .line 3448
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/store/provider/AccessHelper;->addCategoryItems(Ljava/util/ArrayList;)I

    .line 3450
    :cond_11
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_12

    .line 3451
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/store/provider/AccessHelper;->updateCategoryItems(Ljava/util/ArrayList;)I

    .line 3453
    :cond_12
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_13

    .line 3454
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/store/provider/AccessHelper;->updateCategoryItemsWithoutParentId(Ljava/util/ArrayList;)I

    .line 3456
    :cond_13
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_14

    .line 3457
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v15}, Lcom/htc/store/provider/AccessHelper;->removeCategoriesByParentIdAndOnlineId(JLjava/util/ArrayList;)I

    .line 3459
    :cond_14
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 3460
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 3461
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 3462
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 3463
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 3466
    .end local v4           #count:I
    .end local v5           #dbCount:I
    .end local v7           #dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #dbOnlineIdsWithoutParentId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #i:I
    .end local v12           #onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #toAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    .end local v15           #toDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #toFillParentId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    .end local v17           #toUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    :cond_15
    sget-object v18, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "Wrong input."

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public syncItemItems(JLjava/util/ArrayList;)Z
    .locals 14
    .parameter "categoryId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3572
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    const/4 v8, 0x0

    .line 3573
    .local v8, result:Z
    const-wide/16 v12, 0x0

    cmp-long v12, p1, v12

    if-lez v12, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 3574
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3575
    .local v1, count:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3576
    .local v7, onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 3577
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v12}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3576
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3580
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/htc/store/provider/AccessHelper;->getAllItemOnlineIdsByCategoryId(J)Ljava/util/ArrayList;

    move-result-object v2

    .line 3581
    .local v2, dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/store/provider/AccessHelper;->getAllItemOnlineIdsWithoutCategoryId()Ljava/util/ArrayList;

    move-result-object v3

    .line 3582
    .local v3, dbOnlineIdsWithoutCategoryId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 3583
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3584
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/htc/store/provider/AccessHelper;->addItemItems(Ljava/util/ArrayList;)I

    .line 3641
    :goto_1
    const/4 v8, 0x1

    .line 3643
    .end local v1           #count:I
    .end local v2           #dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #dbOnlineIdsWithoutCategoryId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #i:I
    .end local v7           #onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    return v8

    .line 3586
    .restart local v1       #count:I
    .restart local v2       #dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #dbOnlineIdsWithoutCategoryId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #i:I
    .restart local v7       #onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3587
    .local v9, toAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3588
    .local v10, toFillCategoryId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_6

    .line 3589
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3590
    .local v6, onlineId:Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3591
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3588
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3593
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3596
    .end local v6           #onlineId:Ljava/lang/String;
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 3597
    invoke-virtual {p0, v9}, Lcom/htc/store/provider/AccessHelper;->addItemItems(Ljava/util/ArrayList;)I

    .line 3599
    :cond_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    .line 3600
    invoke-virtual {p0, v10}, Lcom/htc/store/provider/AccessHelper;->updateItemItemsListPartWithoutCategoryId(Ljava/util/ArrayList;)I

    .line 3602
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3603
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 3606
    .end local v9           #toAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    .end local v10           #toFillCategoryId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    :cond_9
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3607
    .restart local v9       #toAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3608
    .local v11, toUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3610
    .restart local v10       #toFillCategoryId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v1, :cond_e

    .line 3611
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3612
    .restart local v6       #onlineId:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 3613
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/store/module/vo/ItemItem;

    .line 3614
    .local v5, item:Lcom/htc/store/module/vo/ItemItem;
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lcom/htc/store/module/vo/ItemItem;->setStatus(I)V

    .line 3615
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3610
    .end local v5           #item:Lcom/htc/store/module/vo/ItemItem;
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3617
    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 3618
    :cond_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3620
    :cond_c
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 3621
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3623
    :cond_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3628
    .end local v6           #onlineId:Ljava/lang/String;
    :cond_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_f

    .line 3629
    invoke-virtual {p0, v9}, Lcom/htc/store/provider/AccessHelper;->addItemItems(Ljava/util/ArrayList;)I

    .line 3631
    :cond_f
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_10

    .line 3632
    invoke-virtual {p0, v11}, Lcom/htc/store/provider/AccessHelper;->updateItemItemsListPart(Ljava/util/ArrayList;)I

    .line 3634
    :cond_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_11

    .line 3635
    invoke-virtual {p0, v10}, Lcom/htc/store/provider/AccessHelper;->updateItemItemsListPartWithoutCategoryId(Ljava/util/ArrayList;)I

    .line 3637
    :cond_11
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3638
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 3639
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1
.end method

.method public syncItemItemsOnlyAdd(Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3478
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    const/4 v5, 0x0

    .line 3480
    .local v5, result:Z
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 3481
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3482
    .local v0, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3483
    .local v4, onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3484
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3483
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3488
    :cond_0
    invoke-virtual {p0}, Lcom/htc/store/provider/AccessHelper;->getAllItemOnlineIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 3489
    .local v1, dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3490
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/store/provider/AccessHelper;->addItemItems(Ljava/util/ArrayList;)I

    .line 3491
    const/4 v5, 0x1

    .line 3508
    .end local v0           #count:I
    .end local v1           #dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v4           #onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return v5

    .line 3493
    .restart local v0       #count:I
    .restart local v1       #dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i:I
    .restart local v4       #onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3495
    .local v6, toAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 3496
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3497
    .local v3, onlineId:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 3498
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3495
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3501
    .end local v3           #onlineId:Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 3502
    invoke-virtual {p0, v6}, Lcom/htc/store/provider/AccessHelper;->addItemItems(Ljava/util/ArrayList;)I

    .line 3504
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3505
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public syncItemItemsOnlyAddAndUpdate(Ljava/util/ArrayList;)Z
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3523
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    const/4 v2, -0x1

    .line 3525
    .local v2, count:I
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 3526
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3527
    .local v6, itemsAmount:I
    const/4 v1, 0x0

    .line 3528
    .local v1, added:I
    const/4 v11, 0x0

    .line 3529
    .local v11, updated:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 3530
    .local v8, onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 3531
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v12}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3530
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3535
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/provider/AccessHelper;->getAllItemOnlineIds()Ljava/util/ArrayList;

    move-result-object v3

    .line 3536
    .local v3, dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3537
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/htc/store/provider/AccessHelper;->addItemItems(Ljava/util/ArrayList;)I

    move-result v1

    .line 3565
    :goto_1
    sget-object v12, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "there are "

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string v15, " items added, and "

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string v15, " items updated"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3566
    add-int v2, v1, v11

    .line 3568
    .end local v1           #added:I
    .end local v3           #dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #i:I
    .end local v6           #itemsAmount:I
    .end local v8           #onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #updated:I
    :cond_2
    const/4 v12, -0x1

    if-le v2, v12, :cond_8

    const/4 v12, 0x1

    :goto_2
    return v12

    .line 3539
    .restart local v1       #added:I
    .restart local v3       #dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #i:I
    .restart local v6       #itemsAmount:I
    .restart local v8       #onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #updated:I
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3540
    .local v9, toAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3543
    .local v10, toUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_5

    .line 3544
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3545
    .local v7, onlineId:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/store/module/vo/ItemItem;

    .line 3546
    .local v5, item:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 3547
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3543
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3549
    :cond_4
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3553
    .end local v5           #item:Lcom/htc/store/module/vo/ItemItem;
    .end local v7           #onlineId:Ljava/lang/String;
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 3554
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/store/provider/AccessHelper;->addItemItems(Ljava/util/ArrayList;)I

    move-result v1

    .line 3557
    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 3558
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/store/provider/AccessHelper;->updateItemItemsOnlineActionTypeOnClickPart(Ljava/util/ArrayList;)I

    move-result v11

    .line 3561
    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3562
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 3568
    .end local v1           #added:I
    .end local v3           #dbOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #i:I
    .end local v6           #itemsAmount:I
    .end local v8           #onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #toAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    .end local v10           #toUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    .end local v11           #updated:I
    :cond_8
    const/4 v12, 0x0

    goto :goto_2
.end method

.method public syncSimilarityItems(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 13
    .parameter "onlineId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3653
    .local p2, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    const/4 v0, -0x1

    .line 3655
    .local v0, count:I
    invoke-direct {p0, p1}, Lcom/htc/store/provider/AccessHelper;->getSimilarItemOnlineIdsByOnlineId(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 3656
    .local v5, oldItemOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3657
    .local v4, newItemOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3658
    .local v6, toBeAddedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3659
    .local v7, toBeAddedOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3663
    .local v8, toBeRemovedOnlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/store/module/vo/ItemItem;

    .line 3664
    .local v3, item:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3665
    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 3666
    sget-object v9, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "to add "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    const-string v12, "/"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, " into similarity table"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3667
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3669
    :cond_1
    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/htc/store/provider/AccessHelper;->hasItemItem(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 3670
    sget-object v9, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "to add "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    const-string v12, "/"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, " into itemitem table"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3671
    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3675
    .end local v3           #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_2
    invoke-virtual {p0, p1, v6}, Lcom/htc/store/provider/AccessHelper;->addSimilarity(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    .line 3679
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3680
    .local v2, id:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 3681
    sget-object v9, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "to remove "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    const-string v12, "/"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v2, v10, v11

    const/4 v11, 0x4

    const-string v12, " from similarity table"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3682
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3686
    .end local v2           #id:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1, v8}, Lcom/htc/store/provider/AccessHelper;->removeSimilarityBySimilarItemIds(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v9

    add-int/2addr v0, v9

    .line 3688
    const/4 v9, -0x1

    if-le v0, v9, :cond_5

    const/4 v9, 0x1

    :goto_2
    return v9

    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public updateCategoryItem(JLandroid/content/ContentValues;)Z
    .locals 5
    .parameter "id"
    .parameter "values"

    .prologue
    .line 3214
    const/4 v0, 0x0

    .line 3215
    .local v0, count:I
    if-eqz p3, :cond_0

    .line 3216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3217
    .local v1, selection:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/store/provider/table/Category;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3219
    .end local v1           #selection:Ljava/lang/String;
    :cond_0
    if-lez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateCategoryItemByOnlinId(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 7
    .parameter "onlineId"
    .parameter "values"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3223
    const/4 v0, 0x0

    .line 3224
    .local v0, count:I
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "online_item_id = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3226
    .local v1, selection:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/Category;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v1, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3230
    .end local v1           #selection:Ljava/lang/String;
    :goto_0
    if-lez v0, :cond_1

    :goto_1
    return v2

    .line 3228
    :cond_0
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "updateCategoryItemByOnlinId error"

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 3230
    goto :goto_1
.end method

.method public updateCategoryItemToInvalidateList(Ljava/lang/String;)Z
    .locals 8
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3234
    const/4 v0, 0x0

    .line 3235
    .local v0, count:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3236
    const-string v1, "online_icon_url = ?"

    .line 3237
    .local v1, selection:Ljava/lang/String;
    sget-object v5, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "updateCategoryItemToInvalidateList selection is "

    aput-object v7, v6, v4

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3238
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3239
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "online_icon_url"

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3240
    iget-object v5, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/store/provider/table/Category;->CONTENT_URI:Landroid/net/Uri;

    new-array v7, v3, [Ljava/lang/String;

    aput-object p1, v7, v4

    invoke-virtual {v5, v6, v2, v1, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3242
    .end local v1           #selection:Ljava/lang/String;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    if-lez v0, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public updateCategoryItems(Ljava/util/ArrayList;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/CategoryItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3186
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CategoryItem;>;"
    const/4 v0, 0x0

    .line 3187
    .local v0, count:I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3188
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3189
    .local v2, size:I
    new-array v3, v2, [Landroid/content/ContentValues;

    .line 3190
    .local v3, valuesArray:[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3191
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v4}, Lcom/htc/store/module/vo/CategoryItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v3, v1

    .line 3190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3193
    :cond_0
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/Category;->CONTENT_URI_BATCH_UPDATE:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 3195
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #valuesArray:[Landroid/content/ContentValues;
    :cond_1
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, " category items are updated"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3196
    return v0
.end method

.method public updateCategoryTTLItem(Lcom/htc/store/module/vo/CategoryTTLItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/store/module/vo/CategoryTTLItem;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3360
    .local v1, selection:Ljava/lang/String;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "updateCategoryTTLItem selection is "

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3361
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/CategoryTTL;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/CategoryTTLItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3362
    .local v0, count:I
    if-ne v0, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public updateGetMoreMappingItem(Lcom/htc/store/module/vo/GetMoreMappingItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3917
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/store/module/vo/GetMoreMappingItem;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3918
    .local v1, selection:Ljava/lang/String;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "updateGetMoreMappingItem selection is "

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3919
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/GetMoreMapping;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/GetMoreMappingItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3920
    .local v0, count:I
    if-ne v0, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public updateGetMoreMappingItem(Lcom/htc/store/module/vo/ImageCacheMappingItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3924
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3925
    .local v1, selection:Ljava/lang/String;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "updateGetMoreMappingItem selection is "

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3926
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/ImageCacheMapping;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3927
    .local v0, count:I
    if-ne v0, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public updateGetMoreTTLItem(Lcom/htc/store/module/vo/GetMoreTTLItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3739
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/store/module/vo/GetMoreTTLItem;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3740
    .local v1, selection:Ljava/lang/String;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "updateGetMoreTTLItem selection is "

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3741
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/GetMoreTTL;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/GetMoreTTLItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3742
    .local v0, count:I
    if-ne v0, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public updateImageCaheMappingItem(JJ)Z
    .locals 8
    .parameter "id"
    .parameter "expiredTime"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3763
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3764
    .local v1, selection:Ljava/lang/String;
    sget-object v5, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "updateImageCaheMappingItem selection is "

    aput-object v7, v6, v4

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3765
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3766
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "expired_time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3767
    iget-object v5, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/store/provider/table/ImageCacheMapping;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v1, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3768
    .local v0, count:I
    if-ne v0, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public updateItemItem(JLandroid/content/ContentValues;)Z
    .locals 7
    .parameter "id"
    .parameter "values"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3299
    const/4 v0, 0x0

    .line 3300
    .local v0, count:I
    if-eqz p3, :cond_0

    .line 3301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3302
    .local v1, selection:Ljava/lang/String;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "updateItemItem selection is "

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3303
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v1, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3305
    .end local v1           #selection:Ljava/lang/String;
    :cond_0
    if-lez v0, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public updateItemItemByOnlineId(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 7
    .parameter "onlineId"
    .parameter "values"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3315
    const/4 v0, 0x0

    .line 3316
    .local v0, count:I
    if-eqz p2, :cond_0

    .line 3317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "online_id = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3318
    .local v1, selection:Ljava/lang/String;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "updateItemItemByOnlineId selection is "

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3319
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v1, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3321
    .end local v1           #selection:Ljava/lang/String;
    :cond_0
    if-lez v0, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public updateItemItemToInvalidateList(Ljava/lang/String;)Z
    .locals 8
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3325
    const/4 v0, 0x0

    .line 3326
    .local v0, count:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3327
    const-string v1, "online_icon_url = ?"

    .line 3328
    .local v1, selection:Ljava/lang/String;
    sget-object v5, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "updateItemItemToInvalidateList selection is "

    aput-object v7, v6, v4

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3329
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3330
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "online_icon_url"

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3331
    iget-object v5, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/store/provider/table/Item;->CONTENT_URI:Landroid/net/Uri;

    new-array v7, v3, [Ljava/lang/String;

    aput-object p1, v7, v4

    invoke-virtual {v5, v6, v2, v1, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3333
    .end local v1           #selection:Ljava/lang/String;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    if-lez v0, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public updateItemItemsCommentLikeInfoOnly(Ljava/util/ArrayList;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3285
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    const/4 v0, 0x0

    .line 3286
    .local v0, count:I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3287
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3288
    .local v2, size:I
    new-array v3, v2, [Landroid/content/ContentValues;

    .line 3289
    .local v3, valuesArray:[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3290
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/store/module/vo/ItemItem;

    invoke-virtual {v4}, Lcom/htc/store/module/vo/ItemItem;->toContentValuesCommentLikeInfoOnly()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v3, v1

    .line 3289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3292
    :cond_0
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/Item;->CONTENT_URI_BATCH_UPDATE:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 3294
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #valuesArray:[Landroid/content/ContentValues;
    :cond_1
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, " item items are updated"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3295
    return v0
.end method

.method public updateItemItemsListPart(Ljava/util/ArrayList;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3246
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    const/4 v0, 0x1

    sget-object v1, Lcom/htc/store/provider/table/Item;->CONTENT_URI_BATCH_UPDATE:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/store/provider/AccessHelper;->updateItemItems(ILandroid/net/Uri;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public updateItemItemsListPartWithoutCategoryId(Ljava/util/ArrayList;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3250
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    const/4 v0, 0x1

    sget-object v1, Lcom/htc/store/provider/table/Item;->CONTENT_URI_BATCH_UPDATE_FILL_CATEGORY_ID:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/store/provider/AccessHelper;->updateItemItems(ILandroid/net/Uri;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public updateItemItemsOnlineActionTypeOnClickPart(Ljava/util/ArrayList;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3254
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    const/4 v0, 0x3

    sget-object v1, Lcom/htc/store/provider/table/Item;->CONTENT_URI_BATCH_UPDATE_FILL_DETAIL_IF_CATEGORY_AND_ONLIN_ACTION_TYPE_ONCLICK_IS_UNKNOWN:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/store/provider/AccessHelper;->updateItemItems(ILandroid/net/Uri;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public updateItemTTLItem(Lcom/htc/store/module/vo/ItemTTLItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3712
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemTTLItem;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3713
    .local v1, selection:Ljava/lang/String;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "updateItemTTLItem selection is "

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3714
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/ItemTTL;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemTTLItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3715
    .local v0, count:I
    if-ne v0, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public updateMyActivityInOrderedHistoryItemsWhichInstalledToSpecificStatusByContentType(I)I
    .locals 10
    .parameter "contentType"

    .prologue
    .line 3831
    const/4 v0, 0x0

    .line 3833
    .local v0, count:I
    const/16 v6, 0x8

    if-eq p1, v6, :cond_0

    const/16 v6, 0xa

    if-ne p1, v6, :cond_2

    .line 3835
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemTypeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemsWhichAreInstalled(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3836
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3837
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3838
    .local v4, size:I
    new-array v5, v4, [Landroid/content/ContentValues;

    .line 3839
    .local v5, valuesArray:[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 3840
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/store/module/vo/MyActivityItem;

    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    aput-object v6, v5, v2

    .line 3841
    aget-object v6, v5, v2

    const-string v7, "status"

    const/16 v8, 0xb

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3839
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3843
    :cond_1
    iget-object v6, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI_BATCH_UPDATE_ORDERED_HISTORY_BY_CONTENT:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 3846
    .end local v2           #i:I
    .end local v3           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v4           #size:I
    .end local v5           #valuesArray:[Landroid/content/ContentValues;
    :cond_2
    sget-object v6, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, " myActivity items are updated to download available by content type"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3850
    :goto_1
    return v0

    .line 3847
    :catch_0
    move-exception v1

    .line 3848
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public updateMyActivityItemById(Lcom/htc/store/module/vo/MyActivityItem;)I
    .locals 8
    .parameter "item"

    .prologue
    .line 3887
    const/4 v0, 0x0

    .line 3889
    .local v0, count:I
    if-eqz p1, :cond_0

    .line 3890
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/store/module/vo/MyActivityItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 3891
    .local v1, cv:Landroid/content/ContentValues;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/store/module/vo/MyActivityItem;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3892
    .local v3, selection:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3894
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #selection:Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, " myActivity items are updated"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3898
    :goto_0
    return v0

    .line 3895
    :catch_0
    move-exception v2

    .line 3896
    .local v2, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateMyActivityItemById(Lcom/htc/store/module/vo/MyActivityItem;J)I
    .locals 8
    .parameter "item"
    .parameter "id"

    .prologue
    .line 3902
    const/4 v0, 0x0

    .line 3904
    .local v0, count:I
    if-eqz p1, :cond_0

    .line 3905
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/store/module/vo/MyActivityItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 3906
    .local v1, cv:Landroid/content/ContentValues;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3907
    .local v3, selection:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3909
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #selection:Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, " myActivity items are updated"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3913
    :goto_0
    return v0

    .line 3910
    :catch_0
    move-exception v2

    .line 3911
    .local v2, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateMyActivityItemByPackageName(Landroid/content/ContentValues;)I
    .locals 8
    .parameter "cv"

    .prologue
    .line 3872
    const/4 v0, 0x0

    .line 3874
    .local v0, count:I
    if-eqz p1, :cond_0

    .line 3875
    :try_start_0
    const-string v4, "item_package_name"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3876
    .local v2, pkgName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item_package_name = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3877
    .local v3, selection:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3879
    .end local v2           #pkgName:Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, " myActivity items are updated"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3883
    :goto_0
    return v0

    .line 3880
    :catch_0
    move-exception v1

    .line 3881
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateMyActivityItems(Ljava/util/ArrayList;)I
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/MyActivityItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3854
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    const/4 v0, 0x0

    .line 3856
    .local v0, count:I
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3857
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3858
    .local v3, size:I
    new-array v4, v3, [Landroid/content/ContentValues;

    .line 3859
    .local v4, valuesArray:[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 3860
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/store/module/vo/MyActivityItem;

    invoke-virtual {v5}, Lcom/htc/store/module/vo/MyActivityItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    aput-object v5, v4, v2

    .line 3859
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3862
    :cond_0
    iget-object v5, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI_BATCH_UPDATE:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 3864
    .end local v2           #i:I
    .end local v3           #size:I
    .end local v4           #valuesArray:[Landroid/content/ContentValues;
    :cond_1
    sget-object v5, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, " myActivity items are updated"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3868
    :goto_1
    return v0

    .line 3865
    :catch_0
    move-exception v1

    .line 3866
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public updateMyActivityMarkedItems(Ljava/util/ArrayList;)I
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/MyActivityItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3793
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    const/4 v0, 0x0

    .line 3795
    .local v0, count:I
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3796
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3797
    .local v4, size:I
    new-array v5, v4, [Landroid/content/ContentValues;

    .line 3798
    .local v5, valuesArray:[Landroid/content/ContentValues;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 3799
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/store/module/vo/MyActivityItem;

    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 3800
    .local v1, cv:Landroid/content/ContentValues;
    const-string v6, "timestamp"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3801
    aput-object v1, v5, v3

    .line 3798
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3803
    .end local v1           #cv:Landroid/content/ContentValues;
    :cond_0
    iget-object v6, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI_BATCH_UPDATE:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 3805
    .end local v3           #i:I
    .end local v4           #size:I
    .end local v5           #valuesArray:[Landroid/content/ContentValues;
    :cond_1
    sget-object v6, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, " myActivity items are updated"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3809
    :goto_1
    return v0

    .line 3806
    :catch_0
    move-exception v2

    .line 3807
    .local v2, e:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public updateMyActivityOrderedHistoryItemsWhenInstalled(Ljava/util/ArrayList;)I
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/MyActivityItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3813
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    const/4 v0, 0x0

    .line 3815
    .local v0, count:I
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3816
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3817
    .local v3, size:I
    new-array v4, v3, [Landroid/content/ContentValues;

    .line 3818
    .local v4, valuesArray:[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 3819
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/store/module/vo/MyActivityItem;

    invoke-virtual {v5}, Lcom/htc/store/module/vo/MyActivityItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    aput-object v5, v4, v2

    .line 3818
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3821
    :cond_0
    iget-object v5, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/store/provider/table/MyActivity;->CONTENT_URI_BATCH_UPDATE_ORDERED_HISTORY:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 3823
    .end local v2           #i:I
    .end local v3           #size:I
    .end local v4           #valuesArray:[Landroid/content/ContentValues;
    :cond_1
    sget-object v5, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, " myActivity items are updated"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3827
    :goto_1
    return v0

    .line 3824
    :catch_0
    move-exception v1

    .line 3825
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public updateSimilarItem(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 7
    .parameter "itemOnlineId"
    .parameter "similarItemOnlineId"
    .parameter "values"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3337
    const/4 v0, 0x0

    .line 3338
    .local v0, count:I
    if-eqz p3, :cond_0

    .line 3339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "online_item_id = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "online_similar_item_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3340
    .local v1, selection:Ljava/lang/String;
    sget-object v4, Lcom/htc/store/provider/AccessHelper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "updateSimilarItem selection is "

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3341
    iget-object v4, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/store/provider/table/SimilarityStructure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v1, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3343
    .end local v1           #selection:Ljava/lang/String;
    :cond_0
    if-lez v0, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public updateSimilarItemToInvalidate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3347
    iget-object v0, p0, Lcom/htc/store/provider/AccessHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/store/provider/table/SimilarityStructure;->CONTENT_URI_BATCH_QUERY:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3348
    return-void
.end method
