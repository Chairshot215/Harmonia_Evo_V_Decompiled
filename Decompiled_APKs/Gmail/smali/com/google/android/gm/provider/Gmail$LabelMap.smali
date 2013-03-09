.class public final Lcom/google/android/gm/provider/Gmail$LabelMap;
.super Ljava/util/Observable;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LabelMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/Gmail$LabelMap$LabelsContentQueryMap;
    }
.end annotation


# static fields
.field private static final EMPTY_CONTENT_VALUES:Landroid/content/ContentValues;


# instance fields
.field private mCanonicalNameToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelIdCached:J

.field private mLabelIdChat:J

.field private mLabelIdDraft:J

.field private mLabelIdIgnored:J

.field private mLabelIdImportantImap:J

.field private mLabelIdInbox:J

.field private mLabelIdMarkImportant:J

.field private mLabelIdMarkUnimportant:J

.field private mLabelIdOutbox:J

.field private mLabelIdSent:J

.field private mLabelIdSpam:J

.field private mLabelIdStarred:J

.field private mLabelIdTrash:J

.field private mLabelIdUnread:J

.field private mLabelsSynced:Ljava/lang/Boolean;

.field private mQueryMap:Landroid/content/ContentQueryMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2326
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$LabelMap;->EMPTY_CONTENT_VALUES:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "contentResolver"
    .parameter "cursor"
    .parameter "keepUpdated"

    .prologue
    .line 2359
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 2346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelsSynced:Ljava/lang/Boolean;

    .line 2360
    invoke-direct {p0, p2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->init(Landroid/database/Cursor;)V

    .line 2361
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 7
    .parameter "contentResolver"
    .parameter "account"

    .prologue
    const/4 v3, 0x0

    .line 2348
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 2346
    iput-object v3, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelsSynced:Ljava/lang/Boolean;

    .line 2349
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2352
    :cond_0
    invoke-static {p2}, Lcom/google/android/gm/provider/Gmail;->getLabelsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2353
    .local v1, queryUri:Landroid/net/Uri;
    const-string v0, "1"

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2354
    sget-object v2, Lcom/google/android/gm/provider/Gmail;->LABEL_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2355
    .local v6, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/google/android/gm/provider/Gmail$LabelMap;->init(Landroid/database/Cursor;)V

    .line 2356
    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/gm/provider/Gmail$LabelMap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2325
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->updateDataStructures()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/gm/provider/Gmail$LabelMap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2325
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->setChanged()V

    return-void
.end method

.method private checkLabelsSynced()V
    .locals 2

    .prologue
    .line 2524
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->labelsSynced()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2525
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LabelMap not initalized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2527
    :cond_0
    return-void
.end method

.method private getLabelIdValues(J)Landroid/content/ContentValues;
    .locals 3
    .parameter "labelId"

    .prologue
    .line 2576
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mQueryMap:Landroid/content/ContentQueryMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2577
    .local v0, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 2580
    .end local v0           #values:Landroid/content/ContentValues;
    :goto_0
    return-object v0

    .restart local v0       #values:Landroid/content/ContentValues;
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/Gmail$LabelMap;->EMPTY_CONTENT_VALUES:Landroid/content/ContentValues;

    goto :goto_0
.end method

.method private init(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 2364
    new-instance v0, Lcom/google/android/gm/provider/Gmail$LabelMap$LabelsContentQueryMap;

    const-string v1, "_id"

    invoke-direct {v0, p1, v1}, Lcom/google/android/gm/provider/Gmail$LabelMap$LabelsContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mQueryMap:Landroid/content/ContentQueryMap;

    .line 2365
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mCanonicalNameToId:Ljava/util/Map;

    .line 2366
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mQueryMap:Landroid/content/ContentQueryMap;

    new-instance v1, Lcom/google/android/gm/provider/Gmail$LabelMap$1;

    invoke-direct {v1, p0}, Lcom/google/android/gm/provider/Gmail$LabelMap$1;-><init>(Lcom/google/android/gm/provider/Gmail$LabelMap;)V

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 2373
    return-void
.end method

.method private declared-synchronized updateDataStructures()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 2394
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mCanonicalNameToId:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 2396
    iget-object v6, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v6}, Landroid/content/ContentQueryMap;->getRows()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2397
    .local v5, row:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2398
    .local v2, key:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2402
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2403
    .local v3, labelId:J
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "canonicalName"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2406
    .local v0, canonicalName:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mCanonicalNameToId:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2408
    const-string v6, "^f"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2409
    iput-wide v3, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdSent:J

    .line 2438
    :cond_1
    :goto_1
    iget-wide v6, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdSent:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_f

    iget-wide v6, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdInbox:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_f

    iget-wide v6, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdDraft:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_f

    iget-wide v6, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdUnread:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_f

    iget-wide v6, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdTrash:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_f

    iget-wide v6, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdSpam:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_f

    iget-wide v6, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdStarred:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_f

    iget-wide v6, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdChat:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_f

    iget-wide v6, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdIgnored:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_f

    const/4 v6, 0x1

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelsSynced:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2394
    .end local v0           #canonicalName:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #labelId:J
    .end local v5           #row:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2410
    .restart local v0       #canonicalName:Ljava/lang/String;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #key:Ljava/lang/String;
    .restart local v3       #labelId:J
    .restart local v5       #row:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    :cond_2
    :try_start_1
    const-string v6, "^i"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2411
    iput-wide v3, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdInbox:J

    goto :goto_1

    .line 2412
    :cond_3
    const-string v6, "^r"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2413
    iput-wide v3, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdDraft:J

    goto :goto_1

    .line 2414
    :cond_4
    const-string v6, "^u"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2415
    iput-wide v3, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdUnread:J

    goto :goto_1

    .line 2416
    :cond_5
    const-string v6, "^k"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2417
    iput-wide v3, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdTrash:J

    goto :goto_1

    .line 2418
    :cond_6
    const-string v6, "^s"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2419
    iput-wide v3, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdSpam:J

    goto :goto_1

    .line 2420
    :cond_7
    const-string v6, "^t"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2421
    iput-wide v3, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdStarred:J

    goto/16 :goto_1

    .line 2422
    :cond_8
    const-string v6, "^b"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2423
    iput-wide v3, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdChat:J

    goto/16 :goto_1

    .line 2424
    :cond_9
    const-string v6, "^g"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2425
    iput-wide v3, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdIgnored:J

    goto/16 :goto_1

    .line 2426
    :cond_a
    const-string v6, "^^cached"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2427
    iput-wide v3, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdCached:J

    goto/16 :goto_1

    .line 2428
    :cond_b
    const-string v6, "^^out"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2429
    iput-wide v3, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdOutbox:J

    goto/16 :goto_1

    .line 2430
    :cond_c
    const-string v6, "^io_im"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2431
    iput-wide v3, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdImportantImap:J

    goto/16 :goto_1

    .line 2432
    :cond_d
    const-string v6, "^^important"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2433
    iput-wide v3, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdMarkImportant:J

    goto/16 :goto_1

    .line 2434
    :cond_e
    const-string v6, "^^unimportant"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2435
    iput-wide v3, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdMarkUnimportant:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2438
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 2448
    .end local v0           #canonicalName:Ljava/lang/String;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #labelId:J
    .end local v5           #row:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    :cond_10
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->close()V

    .line 2591
    return-void
.end method

.method public getCanonicalName(J)Ljava/lang/String;
    .locals 2
    .parameter "labelId"

    .prologue
    .line 2552
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdValues(J)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "canonicalName"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getLabelId(Ljava/lang/String;)J
    .locals 3
    .parameter "canonicalName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2568
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mCanonicalNameToId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2569
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mCanonicalNameToId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 2571
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown canonical name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2568
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdCached()J
    .locals 2

    .prologue
    .line 2500
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2501
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdCached:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2500
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdDraft()J
    .locals 2

    .prologue
    .line 2465
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2466
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdDraft:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdIgnored()J
    .locals 2

    .prologue
    .line 2495
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2496
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdIgnored:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdInbox()J
    .locals 2

    .prologue
    .line 2460
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2461
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdInbox:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdOutbox()J
    .locals 2

    .prologue
    .line 2505
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2506
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdOutbox:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2505
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdSent()J
    .locals 2

    .prologue
    .line 2455
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2456
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdSent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdSpam()J
    .locals 2

    .prologue
    .line 2480
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2481
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdSpam:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdStarred()J
    .locals 2

    .prologue
    .line 2485
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2486
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdStarred:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdTrash()J
    .locals 2

    .prologue
    .line 2475
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2476
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdTrash:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelIdUnread()J
    .locals 2

    .prologue
    .line 2470
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->checkLabelsSynced()V

    .line 2471
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelIdUnread:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName(J)Ljava/lang/String;
    .locals 2
    .parameter "labelId"

    .prologue
    .line 2559
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdValues(J)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumConversations(J)I
    .locals 2
    .parameter "labelId"

    .prologue
    .line 2531
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdValues(J)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "numConversations"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNumUnreadConversations(J)I
    .locals 4
    .parameter "labelId"

    .prologue
    .line 2536
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdValues(J)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "numUnreadConversations"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 2540
    .local v1, unreadConversations:Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 2541
    .local v0, result:I
    if-eqz v1, :cond_0

    .line 2542
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1

    const/4 v0, 0x0

    .line 2545
    :cond_0
    :goto_0
    return v0

    .line 2542
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method getQueryMap()Landroid/content/ContentQueryMap;
    .locals 1

    .prologue
    .line 2451
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mQueryMap:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method public declared-synchronized labelsSynced()Z
    .locals 1

    .prologue
    .line 2379
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelsSynced:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelsSynced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized labelsSynchronizationStateInitialized()Z
    .locals 1

    .prologue
    .line 2386
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mLabelsSynced:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requery()V
    .locals 1

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$LabelMap;->mQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->requery()V

    .line 2587
    return-void
.end method
